pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/mkhaled93/smartcheck.git', branch: 'master')
      }
    }
    stage('DockerBuild') {
      steps {
        sh 'docker.build(\'650143975734.dkr.ecr.ap-southeast-1.amazonaws.com/smartcheck:latest\')'
      }
    }
    stage('ECR Push') {
      steps {
        sh '''docker.withRegistry(\'650143975734.dkr.ecr.ap-southeast-1.amazonaws.com/smartcheck:latest\', \'ecr:ap-southeast-1:demo-ecr-credentials\') {
           docker.image(\'650143975734.dkr.ecr.ap-southeast-1.amazonaws.com/smartcheck:latest\').push(env.IMAGETAG+\'-\'+env.BUILD_ID)}'''
        }
      }
    }
  }