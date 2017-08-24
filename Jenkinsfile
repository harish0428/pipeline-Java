 pipeline { 
    agent {
      label 'master'
    }

    stages {
      stage('build') {
        steps { 
          sh 'ant -f build.xml -v'
       }
      }
     stage('deploy'){
       steps {
        sh "cp dist/rectangle_${env.BUILD_NUM}.jar /var/www/html/rectangles/all/"
        }
       }
     }

     post { 
       always {
         archiveArtifacts artifacts: 'dist/*.jar', fingerprint: true
        }
      }
    }
