pipeline {
    agent {
         label 'agent-02'
        }
     options {
        timeout(time:30, unit: 'SECONDS')
        disableConcurrentBuilds()
    }
     parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
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
            stage ("print params"){
                steps {
                    echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"

                echo "trigger test "
                }
            }
        }
}