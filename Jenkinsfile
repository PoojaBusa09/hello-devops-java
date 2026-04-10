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

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f $CONTAINER_NAME || true
                docker run --name $CONTAINER_NAME $IMAGE_NAME
                '''
            }
        }
    }
}