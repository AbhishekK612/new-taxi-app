pipeline {

    agent none

    tools {
        maven 'MyMaven'
    }

    parameters {
        string(
            name: 'Env',
            defaultValue: 'Test',
            description: 'Version to deploy'
        )

        booleanParam(
            name: 'executetest',
            defaultValue: true,
            description: 'Decide whether to run test cases or not'
        )

        choice(
            name: 'APPVERSION',
            choices: ['1.1', '1.2', '1.3'],
            description: 'Select the App version to deploy'
        )
    }

    environment {
        BUILD_SERVER = 'ec2-user@172.31.14.81'
        IMAGE_REPO = 'abhishekk612/taxi-booking'
        DEPLOY_SERVER = 'ec2-user@172.31.15.57'
    }

    stages {

        stage('Compile') {
            agent any

            steps {
                script {
                    echo "Compile the code in ${params.Env} environment"
                    sh 'mvn clean compile'
                }
            }
        }

        stage('CodeReview') {
            agent {
                label 'linux-slave'
            }

            steps {
                script {
                    echo "Reviewing the code"
                    sh 'mvn pmd:pmd'
                }
            }
        }

        stage('Unit Testing') {
            agent any

            when {
                expression {
                    return params.executetest
                }
            }

            steps {
                script {
                    echo "Test the code"
                    sh 'mvn test'
                }
            }

            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('Coverage analysis') {
            agent any

            steps {
                script {
                    echo "Static code analysis of ${params.APPVERSION} version"
                    sh 'mvn verify'
                }
            }
        }

        stage('Containerose the code and psuh the image to docker hub') {
            agent any

            steps {
                script {

                    sshagent(['slave2']) {

                        withCredentials([
                            usernamePassword(
                                credentialsId: 'docker-hub',
                                usernameVariable: 'username',
                                passwordVariable: 'passwd'
                            )
                        ]) {

                            echo "Copying deployment script to EC2"

                            sh '''
                                scp -o StrictHostKeyChecking=no \
                                server-script.sh \
                                ${BUILD_SERVER}:/home/ec2-user/
                            '''

                            echo "Building Docker image on EC2"

                            sh """
                                ssh -o StrictHostKeyChecking=no ${BUILD_SERVER} \
                                "bash /home/ec2-user/server-script.sh ${IMAGE_REPO}:${BUILD_NUMBER}"
                            """

                            echo "Logging in to Docker Hub"

                            sh '''
                                printf '%s' "$passwd" | \
                                ssh -o StrictHostKeyChecking=no ${BUILD_SERVER} \
                                "sudo docker login -u '$username' --password-stdin"
                            '''

                            echo "Tagging Docker image"

                            sh """
                                ssh -o StrictHostKeyChecking=no ${BUILD_SERVER} \
                                "sudo docker tag ${IMAGE_REPO}:${BUILD_NUMBER} ${IMAGE_REPO}:${params.APPVERSION}"
                            """

                            echo "Pushing Docker image"

                            sh """
                                ssh -o StrictHostKeyChecking=no ${BUILD_SERVER} \
                                "sudo docker push ${IMAGE_REPO}:${params.APPVERSION}"
                            """

                        }
                    }
                }
            }
        }

          stage('Deploy the docker image') {
            agent any

            steps {
                script {

                    sshagent(['slave2']) {
                       
                       echo "Starting Deploying the Docker Image into the Deply-Server"
                        withCredentials([
                            usernamePassword(
                                credentialsId: 'docker-hub',
                                usernameVariable: 'username',
                                passwordVariable: 'passwd'
                            )
                        ]) {
                        
                            echo "INSTALLING DOCKER!.........."

                            sh "ssh -o StrictHostKeyChecking=no ${DEPLOY_SERVER} sudo yum install docker -y"
                            sh "ssh ${DEPLOY_SERVER} sudo service docker start"
                            sh "ssh ${DEPLOY_SERVER} sudo docker login -u ${username} -p ${passwd}"
                            sh "ssh ${DEPLOY_SERVER} sudo docker pull ${IMAGE_REPO}:${params.APPVERSION}"
                            sh "ssh  ${DEPLOY_SERVER} sudo docker rm -f taxi-booking 2>/dev/null || true"
                            sh "ssh ${DEPLOY_SERVER} sudo docker rmi -f ${IMAGE_REPO}:${BUILD_NUMBER} 2>/dev/null || true"
                            sh "ssh ${DEPLOY_SERVER} sudo docker rmi -f ${IMAGE_REPO}:${params.APPVERSION} 2>/dev/null || true"
                            sh "ssh ${DEPLOY_SERVER} sudo docker run -itd -P --name taxi-booking ${IMAGE_REPO}:${params.APPVERSION}"
                            

                            echo "Docker container deployed successfully!!.........."

                            

                        }
                    }
                }
            }
        }
    }
}