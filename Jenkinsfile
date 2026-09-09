```groovy
pipeline {
    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git 'https://github.com/betawins/Trading-UI.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Application') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy Application') {
            steps {
                sh 'pm2 delete Trading-UI || true'
                sh 'pm2 start npm --name "Trading-UI" -- start'
            }
        }
    }
}
```
