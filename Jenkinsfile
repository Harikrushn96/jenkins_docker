pipeline {
    agent any

    stages {
        stage ('docker build') {
            steps {
                sh 'docker build -t first:latest .'
            }
        }
        stage ('creatingcontainer') {
            steps {
                sh 'docker run -d -p 80:8080 first:latest'
            }
        }
   }
}
