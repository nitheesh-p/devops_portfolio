# 🚀 Terraform EC2 Automation

Welcome to **Terraform EC2 Automation** — a practical project that demonstrates how to launch and configure an AWS EC2 instance using Terraform. This setup includes automated provisioning of a key pair, VPC, security group, and a virtual machine on AWS.

---

## 📦 What This Project Does

✅ Creates an **EC2 Instance** (Ubuntu, t2.micro)  
🔐 Provisions an **SSH Key Pair** for secure access  
🌐 Sets up a **default VPC** and a custom **Security Group**  
🛡️ Allows inbound SSH (port 22) and all outbound traffic  
💽 Attaches a 10 GB root volume with `gp3` storage  

Perfect for:
- Getting started with AWS infrastructure using Terraform
- Learning how to manage networking and compute resources via code
- Small to medium-scale cloud provisioning projects

---

## 📁 Project Structure

```bash
Terraform-EC2-Automation/
├── ec2.tf            # EC2 instance configuration
├── providers.tf      # AWS provider setup
├── terraform.tf      # Optional configuration file
├── terra-key-ec2     # Private key (DO NOT commit this)
├── terra-key-ec2.pub # Public key used in key pair
└── README.md         # Project documentation (this file)
```

---

## 🔧 Prerequisites

Ensure you have the following installed:

### ✅ Terraform
👉 [Install Terraform](https://developer.hashicorp.com/terraform/install)

### ✅ AWS CLI & Credentials
Make sure your AWS credentials are configured properly using:
```bash
aws configure
```

### ✅ Git
To clone the repository:
```bash
git clone https://github.com/nitheesh-p/devops_portfolio.git
cd devops_portfolio/Terraform/Terraform-EC2-Automation
```
### ✅ SSH Key Pair (Manual Step)
Before applying Terraform configuration:
```bash
# Generate SSH key pair
ssh-keygen -t rsa -b 4096 -f terra-key-ec2

# This generates:
# - terra-key-ec2 (private key)
# - terra-key-ec2.pub (public key)

# Ensure the public key is in your project folder
```
---

## 🚀 Getting Started

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Check the execution plan**
   ```bash
   terraform plan
   ```

3. **Apply the configuration**
   ```bash
   terraform apply
   ```

4. **Verify the deployment**
   - One EC2 instance will be created in the AWS Console.
   - Security group with SSH access will be attached.
   - Use your private key (`terra-key-ec2`) to SSH into the instance:
     ```bash
     ssh -i terra-key-ec2 ubuntu@<EC2_PUBLIC_IP>
     ```

---

## 🔄 Cleanup

To destroy all resources created:

```bash
terraform destroy
```

---

## ⚠️ Notes

- Do **not** upload your private key (`terra-key-ec2`) to version control.
- You must replace the AMI ID with a valid Ubuntu AMI for your AWS region.
- Make sure your IAM user has sufficient permissions to create EC2, VPC, and security groups.

---

## 👨‍💻 Author

**Nitheesh Prakashan Parayil**  
DevOps Portfolio | Terraform EC2 Automation  
🔗  [GitHub Profile](https://github.com/nitheesh-p)

⭐ If you found this helpful, consider starring the repo and sharing it!

