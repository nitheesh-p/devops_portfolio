#!/bin/bash

# Paths and Variables
TERRAFORM_OUTPUT_DIR="."  # Where your Terraform files are
ANSIBLE_INVENTORY_DIR="inventories"
INVENTORY_FILE="$ANSIBLE_INVENTORY_DIR/dev"

# Ensure inventory directory exists
mkdir -p "$ANSIBLE_INVENTORY_DIR"

# Navigate to the Terraform directory
cd "$TERRAFORM_OUTPUT_DIR" || { echo "Terraform directory not found"; exit 1; }

# Clear the inventory file
> "$INVENTORY_FILE"

# Write header
echo "[my_servers]" >> "$INVENTORY_FILE"

# Get only the Worker nodes
terraform output -json ec_public_ip | jq -c '.[]' | while read -r instance; do
    name=$(echo "$instance" | jq -r '.name')
    ip=$(echo "$instance" | jq -r '.public_ip')

    # Only add worker nodes
    if [[ "$name" == *Worker1* ]]; then
        echo "worker1 ansible_host=$ip" >> "$INVENTORY_FILE"
        echo "worker1 ansible_user=ubuntu" >> "$INVENTORY_FILE"
    elif [[ "$name" == *Worker2* ]]; then
        echo "worker2 ansible_host=$ip" >> "$INVENTORY_FILE"
        echo "worker2 ansible_user=ec2-user" >> "$INVENTORY_FILE"
    fi
done

# Add common group vars
cat <<EOF >> "$INVENTORY_FILE"

[my_servers:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_ssh_private_key_file=/home/ubuntu/keys/terra-key-ec2
EOF

echo "Inventory file created at: $INVENTORY_FILE"
