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

