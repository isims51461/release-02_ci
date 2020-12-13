pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    tools {
        maven 'M2_HOME'
    }

    stages {
        stage('build') {
            steps {
                echo 'hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }
    
        stage ('build and push docker image') {
            steps {
                script {
                    checkout scm
                    docker.withRegistry('','docker_registry_creds') {
                        def customImage = docker.build("isims51461/release-02:${env.BUILD_ID}")
                        def customImage1 = docker.build("isims51461/release-02")
                        customImage.push()
                        customImage1.push()
                    }
                }
            }
        }
    }
}

