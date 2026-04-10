pipeline {
    agent any

    environment {
        IMAGE_NAME = 'hello-devops-app'
        CONTAINER_NAME = 'hello-devops-container'
    }

    stages {

        stage('Checkout') {
            steps {
                git url: 'https://github.com/PoojaBusa09/hello-devops-java.git', branch: 'main'
            }
        }
        stage('Test Docker') {
    steps {
        sh 'docker --version'
    }
}

        stage('Test Docker') {
            steps {
                bat 'docker --version'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Run Container') {
            steps {
                bat '''
                docker rm -f %CONTAINER_NAME% || echo container not found
                docker run --name %CONTAINER_NAME% %IMAGE_NAME%
                '''
            }
        }
    }
}
