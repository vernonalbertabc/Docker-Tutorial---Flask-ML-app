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

 stage('Remove Unused docker image') {
      steps{
        cmd "docker rmi $registry:$BUILD_NUMBER"
      }
    }


    
}    
  
}