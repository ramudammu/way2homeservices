
node() {
    deleteDir()
    
    stage('Unit Tests') {
        sh '''
            cd way2home
            mvn clean test
        '''
    }
   
    stage('Create Package') {
        sh '''
            mvn clean package
        '''
        println "Verifying build status and notifying users..."
        println(currentBuild.currentResult)

        if(!currentBuild.currentResult == 'SUCCESS') {
        
         emailext (
            to: "ramudammu1234@gmail.com",
            
            subject: "FAILED: Job '${JOB_NAME}' ",
            mimeType: 'text/html',
            attachLog: true,
            body: "SUCCESS,JOB: ${JOB_NAME} - Build No.: ${BUILD_NUMBER} - Build URL: (<${BUILD_URL} | Open  Please check console output logs in attachment."    

    )

    sh '''
          echo 'mail sent successfully.'
          
          '''   
          exit 1
                  }
       
 
}

}
