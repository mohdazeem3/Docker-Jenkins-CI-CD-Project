pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo "Cloning code from GitHub..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t myapp .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker container..."
                sh '''
                docker rm -f myapp-container || true
                docker run -d -p 3000:3000 --name myapp-container myapp
                '''
            }
        }
    }
}
