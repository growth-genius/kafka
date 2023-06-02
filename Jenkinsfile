node {

    try {
        stage('Start') {
            // slackSend (channel: '#jenkins', color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }

        stage('git sslVerify off') {
            sh(script: "git config --global http.sslVerify false || true")
        }

        stage('git source Pull') {
            checkout scm
        }

        stage("Docker run"){
            sh(script: "docker-compose down -v")
            sh(script: "docker-compose up -d")
        }

    } catch(e) {
        print(e)
    }

}