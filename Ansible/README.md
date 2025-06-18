
# ⚙️ Ansible Automation – DevOps Portfolio

Welcome to the Ansible Automation section of the DevOps Portfolio! This project demonstrates how to provision infrastructure with Terraform and configure it using Ansible.

---

## 🌟 What This Project Does

-   🏗️ **Provision EC2 instances** using Terraform

-   📜 **Generate Ansible inventory** dynamically with `add_ansible_host.sh`

-   🐧 **Install Docker and Nginx** on remote EC2 instances via Ansible playbooks

-   🔐 Uses private key authentication for secure remote access
---

## 📁 Project Structure

```bash
Ansible/
├── add_ansible_host.sh          # Script to generate inventory from Terraform outputs
├── Inventories/
│   └── dev                      # Dev environment inventory (auto-generated)
├── playbooks/
│   ├── install_docker.yml       # Playbook to install Docker
│   └── install_nginx.yml        # Playbook to install Nginx
└── Terraform for Ansible/
    ├── ec2.tf                   # EC2 instance definitions
    ├── output.tf                # Output variables (public IPs, etc.)
    ├── providers.tf             # Provider configs (AWS, region, etc.)
    ├── terraform.tf             # Main config
    ├── terraform.tfstate        # Terraform state file
    ├── terraform.tfstate.backup # Terraform state backup
    ├── terra-key-ec2            # Private key (for SSH)
    └── terra-key-ec2.pub        # Public key
```
## 🛠️ Prerequisites

-   ✅ [Terraform](https://developer.hashicorp.com/terraform/install)

-   ✅ Ansible

-   ✅ AWS CLI (if using AWS)

-   ✅ SSH key access

## 🚀 How to Use

### 1. Provision EC2 Instances

```bash
cd "Ansible/Terraform for Ansible"
terraform init
terraform apply
```
### 2. Generate Ansible Inventory

Can be done manually Too I have used shell script to make the process easy.
```bash
cd ..
bash add_ansible_host.sh
```
### 3. Run Ansible Playbooks

Install Docker:
```bash
ansible-playbook -i Inventories/dev playbooks/install_docker.yml
```
Install Nginx
```bash
ansible-playbook -i Inventories/dev playbooks/install_nginx.yml
```
## 🧹 Cleanup

```bash
cd "Terraform for Ansible"
terraform destroy
```

## 👨‍💻 Author

**Nitheesh Prakashan Parayil**

DevOps Portfolio | Ansible Automate Project

🔗  [GitHub Profile](https://github.com/nitheesh-p)
