pipeline {
    agent any

    stages {
        stage ('docker build') {
            steps {
                sh 'docker build -t first:latest .'
            }
        }
   }
}