pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/mkhaled93/smartcheck.git', branch: 'master')
      }
    }
    stage('Docker') {
      steps {
        script {
          docker.build('650143975734.dkr.ecr.ap-southeast-1.amazonaws.com/smartcheck:latest')
        }

      }
    }
    stage('ECR') {
      steps {
        script {
          docker.withRegistry('650143975734.dkr.ecr.ap-southeast-1.amazonaws.com', 'ecr:ap-southeast-1u:demo-ecr-credentials') 
          
          }

        }
      }
    }
  }
