pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t my-demo-app:latest .'
            }
        }

        stage('Tag Image') {
            steps {
                sh 'docker tag my-demo-app:latest divyamaragouni/jenkins-demo:latest'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub',
                                                 usernameVariable: 'USER',
                                                 passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push divyamaragouni/jenkins-demo:latest'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f jenkins-demo || true
                docker run -d --name jenkins-demo -p 8081:80 divyamaragouni/jenkins-demo:latest
                '''
            }
        }
    }
}
