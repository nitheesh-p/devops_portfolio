# ☁️ Terraform S3 Automation - AWS Bucket Provisioning

Welcome to **Terraform S3 Automation** — a minimal yet powerful Terraform project that demonstrates how to provision AWS resources using Infrastructure as Code.

This project creates an **Amazon S3 bucket** on AWS using the Terraform `aws_s3_bucket` resource, showcasing how easy it is to automate cloud infrastructure.

---

## 📦 What This Project Does

📁 Provisions an **S3 bucket** on AWS  
🌍 Uses the `us-east-1` region (customizable)  
🔐 No manual setup on AWS Console — fully automated

Ideal for:
- Learning Terraform with AWS provider
- Automating basic cloud resource creation
- Getting started with remote storage and infrastructure-as-code pipelines

---

## 📁 Project Structure

```bash
Terraform-s3-automation/
├── s3.tf                  # AWS S3 bucket creation resource
├── terraform.tf           # AWS provider configuration
├── .terraform.lock.hcl    # Provider version lock file (auto-generated)
└── README.md              # Project documentation (this file)
```

---

## 🔧 Prerequisites

Ensure you have the following installed and configured:

### ✅ Terraform

Install Terraform  
👉 [Terraform Installation Guide](https://developer.hashicorp.com/terraform/install)

### ✅ AWS CLI + IAM Access

Configure AWS credentials using:

```bash
aws configure
```

Ensure your IAM user has `AmazonS3FullAccess` or equivalent permission.

### ✅ Git

Clone the project using:

```bash
git clone https://github.com/nitheesh-p/devops_portfolio.git
cd devops_portfolio/Terraform/Terraform-s3-automation
```

---

## 🚀 Getting Started

Follow these steps to provision your AWS S3 bucket:

1. **Initialize Terraform:**

   ```bash
   terraform init
   ```

2. **Preview the changes:**

   ```bash
   terraform plan
   ```

3. **Apply the configuration:**

   ```bash
   terraform apply
   ```

4. **Result:**

   A new S3 bucket (e.g., `my-simple-s3-bucket-521`) will be created in your AWS account.

---

## 🔄 Cleanup

To destroy the S3 bucket and remove the infrastructure:

```bash
terraform destroy
```

⚠️ Note: Deleting an S3 bucket will also delete all objects stored in it.

---

## 📝 Notes

- This project uses the `aws` provider to provision cloud resources.
- The bucket name must be **globally unique** across AWS.
- Change the region and bucket name in `s3.tf` to customize deployment.

---

## 👨‍💻 Author

**Nitheesh Prakashan Parayil**  
DevOps Portfolio | Terraform S3 Automation  
🔗 [GitHub Profile](https://github.com/nitheesh-p)

---

⭐ *If you found this helpful, consider starring the repo and sharing it!*  
