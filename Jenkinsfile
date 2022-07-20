pipeline {
    agent any

    stages {
        stage('install') {
            steps {
                echo "install"
                sh("npm install")
            }
        }
       stage('test') {
            steps {
                echo "test"

               sh(" npm run test")
            }
        } 
        stage('build') {
            steps {
                echo "build"
                sh("npm run build")
            }
        }
          
       stage('docker build') {
            steps {
              echo "docker build"
                sh('docker build -t pip1/${BUILD_NUMBER} .)
                
          }
    }
    }

       
     
}
