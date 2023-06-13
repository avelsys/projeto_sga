pipeline {
  agent { label 'docker' }
  environment {
    PATH = "/hot/new/bin:${env.PATH}"
  }
  stages {
    stage ('build') {
      steps {
        echo "PATH is: ${env.PATH}"
      }
    }
  }
}