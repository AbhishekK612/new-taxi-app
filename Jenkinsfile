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

    environment {
        BUILD_SERVER = 'ec2-user@172.31.14.81'
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
                      agent any
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
                                        sshagent(['slave2']){
                                                                                    
                                         echo "Package the code"
                                         sh "scp -o StrictHostKeyChecking=no server-script.sh ${BUILD_SERVER}:/home/ec2-user/"
                                         sh "ssh -o StrictHostKeyChecking=no ${BUILD_SERVER} 'bash ~/server-script.sh'"
                                    }
                                    }
                                }
                            }
        }
}
                
            
