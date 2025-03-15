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
                        ls -ltr
                        echo init 
                        """
                    }
                }
                stage('plan'){
                    steps {
                        sh """
                       echo plan 
                        """
                    }
                }
                stage('apply'){
                    steps {
                        sh """
                           echo apply 
                        """
                    }
                }
                stage('destroy'){
                    steps {
                        sh """
                           echo destroy 
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