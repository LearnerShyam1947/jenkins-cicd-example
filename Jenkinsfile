pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'karnamshyam1947/example-cicd'
    }

    stages {

        stage('GitHub Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/LearnerShyam1947/jenkins-cicd-example.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh "docker build -t ${DOCKER_IMAGE_NAME}:latest ."
                }
            }
        }

        stage('Stop and Remove Old Container') {
            steps {
                script {
                    // Stop and remove any existing container with the same name
                    sh "docker ps -q --filter 'name=example' | xargs -r docker stop | xargs -r docker rm"
                }
            }
        }

        stage('Run Docker container') {
            steps {
                script {
                    // Run the container in detached mode
                    sh "docker run -d -p 8088:80 --name example ${DOCKER_IMAGE_NAME}:latest"
                }
            }
        }
    }
}
