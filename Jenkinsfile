pipeline{
        agent {
            label 'node-02'
        }
        options {
            timeout(time:30, unit:'MINUTES')
            disableConcurrentBuilds()
            ansiColor('xterm')
        }
        stages {
                stage('init'){
                    steps{
                        sh """
                        cd sg-01
                        terraform init -reconfigure 
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