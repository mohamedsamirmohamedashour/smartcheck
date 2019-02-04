pipeline {
 agent any
 stages {
   stage('Checkout') {
     steps {
       git 'https://github.com/mkhaled93/smartcheck.git'
     }
   }
   stage('Docker build') {
     steps {
       script {
         docker.build('smartcheck')
       }
 
     }
   }
   stage('ECR push') {
     steps {
       script {
         docker.withRegistry('650143975734.dkr.ecr.ap-southeast-1.amazonaws.com', 'ecr:ap-southeast-1:demo-ecr-credentials') {
           docker.image('smartcheck').push(env.IMAGETAG+'-'+env.BUILD_ID)}
         }
 
       }
     }
 } 
} 
