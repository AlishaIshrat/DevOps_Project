pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/AlishaIshrat/DevOps_Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('devops-web-app')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 80:80 --name devops-app devops-web-app || echo "Container may already be running."'
                }
            }
        }
    }
}
