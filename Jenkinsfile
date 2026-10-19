
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

        stage('Trivy Security Scan') {
            steps {
                sh '''
                    if command -v trivy >/dev/null 2>&1; then
                        trivy image --severity HIGH,CRITICAL --exit-code 0 week12-ecommerce-devops-ecommerce-web
                    else
                        echo "Trivy is not installed in this build environment"
                        exit 1
                    fi
                '''
            }
        }

        stage('Deploy Application') {
            steps {
                sh 'docker compose up -d --no-recreate'
            }
        }

        stage('Complete') {
            steps {
                echo 'CI pipeline completed successfully'
            }
        }
    }
}

