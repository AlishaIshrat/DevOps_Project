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
                sh 'docker build -t 40851/my-web-app .'
            }
        }

        stage('Stop Existing Container') {
            steps {
                // This will stop the container if it exists (ignore error if it doesn't)
                sh 'docker stop my-web-app-container || true'
                sh 'docker rm my-web-app-container || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8081:80 --name my-web-app-container 40851/my-web-app'
            }
        }
    }
}
