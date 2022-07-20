pipeline {
    agent any
    
    environment {
        
     VERSION = "3.5.5"   
     CREDS = credentials('github') 
    }

    stages {
        stage('install') {
            steps {
                echo "install"
                echo  "${VERSION}"
                echo "${CREDS}"
               
                sh("npm install")
            }
        }
       stage('test') {
           
           when {
    
           branch 'dev'
           }
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
          
       
        
        stage('docker BUILD/push') {
            steps {
                withCredentials([
                usernamePassword(credentialsId: 'github',  usernameVariable: USER , passwordVariable: PWD )
                ])
              echo "docker push"
                sh('docker build -t omarkataa/jenkins-react2${BUILD_NUMBER} . ')
                sh('echo $PWD | docker login -u $USER --password-stdin ')
                sh(' docker push omarkataa/jenkins-react2$BUILD_NUMBER')
                
          }
    }
    }

       
     
}
