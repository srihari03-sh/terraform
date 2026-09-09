pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Terraform') {
            steps {
                sh '''
                    echo "Terraform version:"
                    terraform version

                    echo "Current directory:"
                    pwd

                    echo "Files:"
                    ls -la
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline completed successfully!'
        }

        failure {
            echo 'Terraform pipeline failed. Check the console output.'
        }

        always {
            echo 'Pipeline execution completed.'
        }
    }
}
