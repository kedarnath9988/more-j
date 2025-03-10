pipeline {
    agent {
         label 'agent-02'
        }
     options {
        timeout(time:30, unit: 'SECONDS')
    }
        //node-02
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