pipeline {
    agent any
    
    environment {
        
     VERSION = "3.5.5"   
     CREDS = credentials('github') 
    }

    stages {
//         stage('install') {
//             steps {
//                 echo "install"
//                 echo  "${VERSION}"
//                 echo "${CREDS}"
               
//                 sh("npm install")
//             }
//         }
//        stage('test') {
           
//            when {
    
//            branch 'dev'
//            }
//             steps {
//                 echo "test"

//                sh(" npm run test")
//             }
//         } 
        
        stage('test') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'github', usernameVariable: 'USR', passwordVaraible: 'PSW')])
                echo "test"
                sh("echo "username:====> $USR password:======> $PSW ")
            }
        }
          
       
//          stage('test') {
//              input {
             
//              message " please enter the env "
//                  ok "Done"
//                  parameters {
                 
//                  choice(name: 'ENV' , choices: ['dev', 'stage', 'prod'], description: '')
                 
//                  }
             
//              }
//             steps {
                
//                 sh("echo 'username $CREDS_USR'")
//                 sh("echo 'password $CREDS_PSW'")
//                 echo "${ENV}"

//             }
//         }
//         stage('docker BUILD/push') {
//             steps {
               
//               echo "docker push"
//                 sh('docker build -t omarkataa/jenkins-react2${BUILD_NUMBER} . ')
//                 sh('echo $CREDS_PSW | docker login -u $CREDS_USR --password-stdin ')
//                 sh(' docker push omarkataa/jenkins-react2$BUILD_NUMBER')
                
//           }
//     }
    }

       
     
}
