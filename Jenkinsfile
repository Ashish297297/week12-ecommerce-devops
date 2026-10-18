pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code is available in workspace'
            }
        }

        stage('Validate Docker Compose') {
            steps {
                sh 'docker compose config -q'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker compose build'
            }
        }

        stage('Complete') {
            steps {
                echo 'CI pipeline completed successfully'
            }
        }
    }
}
