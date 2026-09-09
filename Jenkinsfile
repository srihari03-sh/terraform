pipeline {
    agent any

    tools {
        nodejs 'NodeJS'
    }

    stages {

        stage('Git checkout') {
            steps {
                git 'https://github.com/srihari03-sh/terraform.git'
            }
        }

        stage('Install npm prerequisites') {
            steps {
                sh '''
                    node --version
                    npm --version
                    npm install
                '''
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
