pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code from GitHub'
                checkout scm
            }
        }

        stage('Validate') {
            steps {
                echo 'Validating website files'
                sh 'bash scripts/validate.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying website to Nginx'
                sh 'bash scripts/deploy.sh'
            }
        }

        stage('Health Check') {
            steps {
                echo 'Checking website availability'
                sh 'curl --fail http://localhost'
            }
        }
    }

    post {
        success {
            echo 'FAMM Training Portal deployed successfully!'
        }

        failure {
            echo 'Pipeline failed. Please check the console output.'
        }
    }
}
