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
                    bat 'docker build -t devops-webapp .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run -d -p 80:80 devops-webapp'
                }
            }
        }
    }
}
