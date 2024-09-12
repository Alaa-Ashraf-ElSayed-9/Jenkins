pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-repo/flask-app.git'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'python3 -m unittest discover -s tests'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('flask-app')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('flask-app').run('-p 5000:5000')
                }
            }
        }
    }
}
