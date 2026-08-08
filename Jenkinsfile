pipeline {
    agent any

    parameters {
        string(name: 'Env', defaultValue: 'Test', description: 'Version to deploye')
        booleanParam(name: 'executetest ', defaultValue: true, description: 'decide to run test cases or not')
        choice(name: 'APPVERSION', choices: ['1.1', '1.2', '1.3'], description: 'Select the Appversion to deploy')
    }
    stages {
        stage('Compile') {
            steps {
                script{
                echo 'Compile the code in ${params.Env} environment'
                }
            }
            }
            stage('CodeReview') {
                steps {
                    script{
                    echo 'Reviewing the code'
                }
                }
            }
                stage('Unit Testing') {
                    when {
                        expression { return params.executetest == true }
                    }
                     
                    steps {
                        script{
                        echo 'Test the code'
                    }
                    }
                }
                    stage('Coverage analysis') {
                        steps {
                            script{
                            echo 'Static code analysis of ${params.APPVERSION} version'
                        }
                        }
                    }
                        stage('Pacage') {
                            steps {
                                script{
                                echo 'Package the code'
                            }
                            }
                        }
                    }
                    }

                
            
