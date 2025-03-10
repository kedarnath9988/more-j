pipeline{
    agent any 
        stages {
            stage ("Build")
                steps {
                    sh 'echo is is Build stage'
                }
            
            }
            stage ("test"){
                steps {
                    sh 'echo is is test stage'
                }
            }
            stage ("prod")
                stage {
                    sh 'echo is is prod stage'
                }
        }
