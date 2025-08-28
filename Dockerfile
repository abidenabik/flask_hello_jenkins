pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-pat', url: 'git@github.com:abidenabik/flask_hello_jenkins.git'
            }
        }
        stage('Build Docker') {
            steps {
                sh 'docker build -t flask_hello_jenkins .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:8080 flask_hello_jenkins'
            }
        }
    }
}
