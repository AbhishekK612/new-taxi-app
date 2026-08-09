pipeline {
    agent none

    tools {
        maven 'MyMaven'
    }

    parameters {
        string(name: 'Env', defaultValue: 'Test', description: 'Version to deploye')
        booleanParam(name: 'executetest ', defaultValue: true, description: 'decide to run test cases or not')
        choice(name: 'APPVERSION', choices: ['1.1', '1.2', '1.3'], description: 'Select the Appversion to deploy')
    }
    stages {
        stage('Compile') {
            agent any
            steps {
                script{
                echo "Compile the code in ${params.Env} environment"
                sh 'mvn clean compile'
                }
            }
            }
            stage('CodeReview') {
                agent{
                        label 'linux-slave'
                      }
                steps {
                    script{
                    echo "Reviewing the code"
                    sh 'mvn pmd:pmd'
                }
                }
            }
                stage('Unit Testing') {
                    agent any
                    /*when {
                        expression { return params.executetest == true }
                    }*/
                     
                    steps {
                        script{
                        echo "Test the code"
                        sh 'mvn test'
                    }
                    }

                    post{
                        always {
                            junit 'target/surefire-reports/*.xml'
                        }
                    }
                }
                    stage('Coverage analysis') {
                      
                        steps {
                            script{
                            echo "Static code analysis of ${params.APPVERSION} version"
                            sh 'mvn verify'
                        }
                        }
                    }
                        stage('Package') {
                            agent any
                                steps {
                                script{
                                echo "Package the code"
                                sh 'mvn package'
                            }
                            }
                        }
                    }
                    }

                
            
