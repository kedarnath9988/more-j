pipeline{
        agent {
            label 'node-04'
        }
        options {
            timeout(time:30, unit:'MINUTES')
            disableConcurrentBuilds()
            ansiColor('xterm')
        }
        parameters{
            choice(name: 'terraform resorce', choices: ['apply','destroy'], description: 'create the resources or destroy')
        }
        stages {
                stage('init'){
                    steps{
                        sh """
                            
                        """
                    }
                }
                stage('plan'){
                    steps {
                        sh """
                       
                        """
                    }
                }
                stage('apply'){
                    steps {
                        sh """
                        
                        """
                    }
                }
                stage('destroy'){
                    steps {
                        sh """
                        
                        """
                    }
                }

        }
        post {
            always {
                echo 'i will run laways '
                deleteDir()
            }
            success {
                echo 'pipeline is successfull'
            }
            
        }

}