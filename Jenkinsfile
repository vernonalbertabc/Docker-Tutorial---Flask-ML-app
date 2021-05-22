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
	        echo 'docker run -p 5000:5000 prediction'
	        }
	   }
	   stage('Testing'){
	        steps {
	            echo 'Testing..'
	            }
	   }
    }
}
