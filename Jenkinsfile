pipeline {
    agent any

    environment {
        IMAGE_NAME = 'busapooja/hello-devops-app'
        CONTAINER_NAME = 'hello-devops-container'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/PoojaBusa09/hello-devops-java.git',
                    credentialsId: 'github-creds'
            }
        }

        stage('Verify Docker') {
            steps {
                bat 'docker --version'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t %IMAGE_NAME% ."
            }
        }

        stage('Docker Login') {
    steps {
        withCredentials([usernamePassword(
            credentialsId: 'docker-hub-creds',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
        )]) {
            bat """
            docker login -u %DOCKER_USER% -p %DOCKER_PASS%
            """
        }
    }
}

        stage('Push to DockerHub') {
            steps {
                bat "docker push %IMAGE_NAME%"
            }
        }

        stage('Remove Old Container') {
            steps {
                bat """
                docker rm -f %CONTAINER_NAME% >nul 2>&1
                """
            }
        }

        stage('Run Container') {
            steps {
                bat """
                docker run -d -p 8081:8080 --name %CONTAINER_NAME% %IMAGE_NAME%
                """
            }
        }
    }
}