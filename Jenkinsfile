pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Hello from GitHub Pipeline!'
            }
        }

        stage('System Info') {
            steps {
                sh 'date'
                sh 'hostname'
                sh 'pwd'
                sh 'whoami'
            }
        }
    }
}
