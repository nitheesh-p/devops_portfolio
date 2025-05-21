# 🌐 Terraform Automate  - File Creation

Welcome to **Terraform Automate** — a simple and elegant Terraform project that showcases how to automate local infrastructure tasks using the `local_file` resource.

This project serves as a beginner-friendly demonstration of **Infrastructure as Code (IaC)** concepts by creating a local text file with custom content and file permissions — all through Terraform!

---

## 📦 What This Project Does

✨ Automatically creates a file on your local machine named `automate.txt`  
📄 Writes the content: `"This is a test file"`  
🔐 Sets file permissions to `0644`  

Perfect for:
- Learning the Terraform basics
- Practicing resource blocks and providers
- Testing local automation before scaling to cloud infrastructure

---

## 📁 Project Structure

```bash
Terraform Automate/
├── automate.tf        # Defines the local file creation logic
└── terraform.tf       # Provider configuration
└── README.md 		   # Project documentation (this file)
```
## 🔧 Prerequisites

Make sure you have the following tools installed:

## ✅ Terraform

Install Terraform 
👉 [Terraform Installation Guide](https://developer.hashicorp.com/terraform/install)
## ✅ Git

To clone the repository:
```bash
git clone https://github.com/nitheesh-p/devops_portfolio.git
cd devops_portfolio/Terraform/Terraform-Automate
```
## 🚀 Getting Started

Follow these steps to execute the automation:

1.  **Initialize Terraform:**
    
    `terraform init` 
    
2.  **Review the execution plan:**
    

    
    `terraform plan` 
    
3.  **Apply the configuration:**
    
    `terraform apply` 
    
4.  **Verify output:**
    
    A file `automate.txt` will be created in your project directory with this content:
   
    
    `This is a test file`
## 🔄 Cleanup

To remove the created file and revert the infrastructure state:

`terraform destroy`

## 📝 Notes

-   This project uses the `local` provider and does **not require cloud credentials**.
    
-   Useful for demos, testing, or CI/CD Terraform setups that work on local environments.

## 👨‍💻 Author

[](https://github.com/nitheesh-p/devops_portfolio/tree/main/Jenkins_CI_CD#-author)

**Nitheesh Prakashan Parayil**  
DevOps Portfolio | Terraform Automate Project  
🔗  [GitHub Profile](https://github.com/nitheesh-p)
