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
                    bat 'docker build -t 40851/my-web-app .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run -d -p 8081:80 40851/my-web-app'
                }
            }
        }
    }
}
