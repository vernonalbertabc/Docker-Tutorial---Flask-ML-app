pipeline {
	agent any
	    stages {
	        stage('Clone Repository') {
	        /* Cloning the repository to our workspace */
	        steps {
	        checkout scm
	        }
	   }
	   stage('Build Image') {
	        steps {
	        echo 'docker image build -t prediction .'
	        }
	   }
	   stage('Run Image') {
	        steps {
	        echo 'docker run -p 5001:5000 -d prediction'
	        }
	   }
	   stage('Testing'){
	        steps {
	            echo 'Testing..'
	            }
	   }
           stage('Push image') {
                steps {
                      echo 'docker login'
                      echo 'docker tag prediction:latest vernondsouza/prediction'
                      echo 'docker push vernondsouza/prediction'
                      }
}
}

}