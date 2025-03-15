pipeline{
        agent {
            label 'node-02'
        }
        options {
            timeout(time:30, unit:'MINUTES')
            disableConcurrentBuilds()
            ansiColor('xterm')
        }
        parameters {
            choice(name: 'terraform', choices: ['apply','destroy'], description: 'Pick something')
        }
        stages {
                stage('init'){
                    steps{
                        sh """
                        
                       echo this i sinit 
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
                    input {
                      message "Should we continue?"
                      ok "Yes, we should."
                    }
                    when {
                        expression {
                            params.choice == 'apply'
                     }
                         }  
                    steps{
                        sh """
                            echo this is apply 
                            we are creating the resources  
                       """
                    }       
            }
                }
                stage('destroy'){
                    input {
                      message "Should we continue?"
                      ok "Yes, we should."
                    }
                    when {
                        expression {
                            params.choice == 'apply'
                     }
                         }  
                    steps{
                        sh """
                            echo this is destroy 
                            we are creating the resources  
                       """
                    }


                }
        post {
            always {
                echo 'i will run laways '
               
            }
            success {
                echo 'pipeline is successfull'
            }
            
        }
                }

