
# Jenkins CI/CD Pipeline for Node.js Application

This project demonstrates a basic Continuous Integration and Continuous Deployment (CI/CD) pipeline using Jenkins for a Node.js application. It utilizes Docker and Docker Compose to containerize the application and manage its deployment.

## 📁 Project Structure
```
├── Jenkins_CI_CD  
│ ├── docker-compose.yml # Defines multi-container deployment (if needed)  
│ ├── Dockerfile # Builds a Docker image for the Node.js app  
│ ├── index.js # Main Express app entry point  
│ ├── Jenkinsfile # Jenkins pipeline for CI/CD  
│ ├── package.json # App metadata and dependencies  
│ └── public/  
│ └── index.html # Static HTML served by Express  
└── README.md # Project documentation (this file)
```

## ✅ Prerequisites

  - Docker installed
  - Docker Compose installed
  - Git installed
### 🧰 Jenkins Setup

Ensure Jenkins is installed and has:

- **Docker installed and accessible by Jenkins**
- **Following Jenkins plugins:**
  - Pipeline
  - Git
  - Docker Pipeline
- **A Jenkins credential ID named `dockerhubid`** with your Docker Hub username/password

---
## 🚀 Getting Started

### 1. Clone This Repository

```bash
git clone https://github.com/nitheesh-p/devops_portfolio.git
cd devops_portfolio/Jenkins_CI_CD
```
## 🧪 Running the App Locally

### Using Docker
```bash 
docker build -t check-in-app .
docker run -d -p 3000:3000 check-in-app
```
### Using Docker Compose
```bash 
docker compose up -d --build
```
## 🛠️ Jenkins Pipeline Details

The pipeline defined in `Jenkinsfile` consists of:

### 🔁 Pipeline Stages:

1.  **Code Checkout**  
    Clones code from [Check_In_App](https://github.com/nitheesh-p/Check_In_App) (branch: `jenkins`).
    
2.  **Build Docker Image**
    ```bash
    docker build -t check-in-app .
    ```
3.  **Test** (currently placeholder)
    
4.   **Push to Docker Hub**
 -   Logs in using Jenkins credentials (`dockerhubid`)
    
-   Tags and pushes the image to Docker Hub:

```bash
docker tag check-in-app <your-user>/check-in-app:latest
docker push <your-user>/check-in-app:latest
```

5.**Deploy**  
Deploys the app using:
```bash
docker compose up -d --build
```


## 🌐 About the Application

The app is a minimal **Express.js** server that serves a static `index.html` page from the `public/` directory.

-   **index.js**: Starts an Express server on port 3000
    
-   **public/index.html**: A basic check-in page (can be extended)

## 🔒 Security

-   **Docker credentials** are securely stored in Jenkins using `usernamePassword` credentials.
    
-   **No hardcoded secrets** are used in the pipeline.

## 📚 Useful References
### 🧰 Jenkins Installation

-   **Official Jenkins Installation Guide:**  
    📎 https://www.jenkins.io/doc/book/installing/
  -   **Jenkins in Docker (Recommended for CI/CD use):**  
    📎 https://www.jenkins.io/doc/book/installing/docker/

### 🐳 Docker Installation

-   **Official Docker Installation Guide:**  
    📎 https://docs.docker.com/get-docker/
        
-   **Install Docker Compose (Standalone Binary or Plugin):**  
    📎 https://docs.docker.com/compose/install/

## 👨‍💻 Author

**Nitheesh Prakashan Parayil**  
DevOps Portfolio | Jenkins CI/CD Project  
🔗 [GitHub Profile](https://github.com/nitheesh-p)



