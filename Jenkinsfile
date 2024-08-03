pipeline {
    agent any
    
    stages {
        stage('building the image') {
            steps {
                echo 'Building...'
                sh 'docker build -t test .'
            }
        }
        
        stage('execute') {
            steps {
                echo 'Testing...'
                // This command will fail because 'exit 1' returns a non-zero exit code
                sh 'docker run -d -p 7080:8080 test '
            }
        }
      
      

    }
    
    post {
        always {
            echo 'This will always run, even if the pipeline fails.'
        }
        success {
            echo 'This will run only if the pipeline succeeds.'
        }
        failure {
            echo 'This will run only if the pipeline fails.'
        }
    }
}
