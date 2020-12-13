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
        stage('build and push docker image') {
      steps {
        script {  
          checkout scm
          docker.withRegistry('', 'DockerRegistryID') {
          def customImage = docker.build("10292019/hol-pipeline:${env.BUILD_ID}")
          def customImage1 = docker.build("10292019/hol-pipeline")      
          customImage.push()
          customImage1.push() 
          }
    }
    
    }
}
        stage ( 'deployment trigger'){
          steps {
            build 'hol-CD'
}
}
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
        stage('build and push docker image') {
      steps {
        script {  
          checkout scm
          docker.withRegistry('', 'DockerRegistryID') {
          def customImage = docker.build("10292019/hol-pipeline:${env.BUILD_ID}")
          def customImage1 = docker.build("10292019/hol-pipeline")      
          customImage.push()
          customImage1.push() 
          }
    }
    
    }
}
        stage ( 'deployment trigger'){
          steps {
            build 'hol-CD'
}
}

  }
}

