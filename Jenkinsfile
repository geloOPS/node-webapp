pipeline {
    agent { label 'linux-node' }
    
    stages {
        stage('Git Checkout') {
            steps {
                git(
                    branch: 'main',
                    credentialsId: 'geloOPS',
                    url: 'https://github.com/geloOPS/node-webapp.git'
                )
            }
        }
        
        stage('Building') {
            steps {
                script {
                    docker.build('node-webapp:latest')
                }
            }
        }
        
        stage('Deployment') {
            steps {
                script {
                    docker.image('node-webapp:latest').run('-d -p 3000:3000')
                }
            }
        }
    }
}

