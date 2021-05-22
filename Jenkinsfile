pipeline {
  environment {
    registry = "vernondsouza/test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    
  }
}