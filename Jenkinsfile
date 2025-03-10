pipeline {
    agent any 
        stages {
            stage ("build"){
                steps {
                    sh 'echo this is in the build stage'
                }
            }
            stage ("test"){
                steps{
                    sh 'echo this is ins the teat stage'
                }
            }
            stage ("deploy"){
                steps{
                    sh "echo this is in hte deploy stage"
                }
            }
        }
}