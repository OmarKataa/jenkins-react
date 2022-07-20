pipeline {
    agent any

    stages {
        stage('install') {
            steps {
                echo "install"
                npm install
            }
        }
       stage('test') {
            steps {
                echo "test"

                npm run test
            }
        }
       stage('build') {
            steps {
                echo "build"
                npm run build
            }
        }
       stage('docker build') {
            steps {
              echo "docker build"
              docker build -t pip1 .
                
            }
        }
    }
}
