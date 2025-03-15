pipeline{
        agent {
            label 'node-02'
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
                        """
                    }
                }
                stage('plan'){
                    steps {
                        sh """
                       echo this is plan 
                        """
                    }
                }
                stage('apply'){
                    steps {
                        sh """
                          echo this is apply 
                        """
                    }
                }
                stage('destroy'){
                    steps {
                        sh """
                          echo this is destroy 
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