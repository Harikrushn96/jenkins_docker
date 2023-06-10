pipeline {
    agent any

    stages {
        stage ('docker build') {
            agent {
                docker {
                    sh 'docker build -t first:latest .'
                }
            }
        }
   }
}
