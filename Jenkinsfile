 pipeline { 
    agent none 

    stages {
      stage('build') {
        agent {
          label 'apache'
        }
        steps { 
          sh 'ant -f build.xml -v'
       }
       post { 
         success { 
           archiveArtifacts artifacts: 'dist/*.jar', fingerprint: true
       }
     }
    }
     stage('deploy'){
      agent {
        label 'apache'
        }
         steps {
          sh "cp dist/rectangle_${env.BUILD_NUMBER}.jar /var/www/html/rectangles/all/"
       }
      }
      stage("Running on Centos") { 
        agent { 
         label 'apache'
       }
       steps {
        sh "wget http://mahank286.mylabserver.com/rectangles/all/rectangle_${env.BUILD_NUMBER}.jar"
        sh "java -jar rectangle_${env.BUILD_NUMBER}.jar 3 4"
       }
     }
     stage("Test on Debian") {
       agent {
         label 'CentOS'
      }
      steps {
       sh "docker pull 'openjdk:8-jre'"
       sh "wget http://mahank286.mylabserver.com/rectangles/all/rectangle_${env.BUILD_NUMBER}.jar"
       sh "java -jar rectangle_${env.BUILD_NUMBER}.jar 4 5"
      }
    }
  }
}
