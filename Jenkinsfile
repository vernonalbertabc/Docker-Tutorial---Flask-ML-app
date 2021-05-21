pipeline {
        def app
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
	        app = docker.build("vernondsouza/prediction")
	        }
	   }
	   
	   stage('Testing'){
	        app.inside {
	            echo 'Testing..'
	            }
	   }
           stage('Push image') {
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
}
}