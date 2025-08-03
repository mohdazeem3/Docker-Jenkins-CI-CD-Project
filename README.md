# Docker + Jenkins CI/CD Project

This project demonstrates how to use Jenkins to build and run a Dockerized web application automatically when changes are pushed to GitHub.

## Tech Stack
- Jenkins
- Docker
- GitHub Webhook (optional)

## How It Works
1. Code is committed and pushed to GitHub.
2. Once pushed,Jenkins Pipeline triggers automatically through the Github Webhook
3. Docker image is built from `Dockerfile`.
4. The container is run.

## Files
- `Dockerfile`: It defines the Docker image.
- `Jenkinsfile`: Jenkins Pipeline script.
- `app/`: Contains the web application code.

## How to Run Locally
```bash
docker build -t "your_app_name" . 
docker run -p 8080:80 "your_app_name"

```
## Note
1. you can give any name for your application

# ⚙️ Jenkins Configuration Steps
🪜 Steps to Set Up Jenkins Pipeline for This Project:
Open Jenkins
Go to http://localhost:8080

Install Required Plugins (if not installed yet)

Docker Pipeline

Git plugin

Pipeline

Create a New Pipeline Job

Click “New Item”

Enter a name (e.g., docker-jenkins-pipeline)

Select “Pipeline”

Click OK

Configure Pipeline from GitHub Repo

Scroll to Pipeline section

Choose: Pipeline script from SCM

SCM: Git

Repository URL: https://github.com/mohdazeem3/Docker-Jenkins-CI-CD-Project.git

Branch: main or master

Save and Run

Click “Save”

Click “Build Now” to trigger the pipeline

# ✅ What Happens:
## Jenkins clones your repo

## Builds the Docker image using the Dockerfile

## Runs the container using the Jenkinsfile

## Your app is available at http://localhost:3000
