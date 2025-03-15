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
                        cd sg-01
                        terraform init -reconfigure 
                        """
                    }
                }
                stage('plan'){
                    steps {
                        sh """
                       cd sg-01
                       terraform plan 
                        """
                    }
                }
                stage('apply'){
                    steps {
                        sh """
                           cd sg-01
                           terraform apply -auto-approve 
                        """
                    }
                }
                stage('destroy'){
                    steps {
                        sh """
                          cd sg-01
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