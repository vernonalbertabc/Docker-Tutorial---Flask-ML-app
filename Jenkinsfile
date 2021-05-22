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
	        bat 'docker image build -t prediction .'
	        }
	   }
	   stage('Run Image') {
	        steps {
	        bat 'docker run -p 5000:5000 prediction'
	        }
	   }
	   
    }
}
