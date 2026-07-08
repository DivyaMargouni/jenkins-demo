pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-demo-app .'
            }
        }

        stage('List Images') {
            steps {
                sh 'docker images'
            }
        }
    }
}
