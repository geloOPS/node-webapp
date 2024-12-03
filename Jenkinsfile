pipeline { 

    agent { label 'linux-node' }

    stages { 
        stage('Git Checkout') { 
            steps { 
                git credentialsId: 'https://github.com/geloOPS/node-webapp.git', 
                    url: 'https://github.com/geloOPS/node-webapp.git', 
                    branch: 'main' 
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
