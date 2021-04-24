pipeline {
    agent {
        label 'linux'
    }
    environment { 
        CI = 'true'
    }
    stages {
         stage('Get Resources') {
            steps {
                git branch: "main", url: 'https://github.com/Eduardgur/WeightTrackerTst'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        
    }
    post {
        success {
            azureUpload containerName: 'jenkinsblob', doNotUploadIndividualFiles: true, filesPath: '*,*/*,**/*,node_modules', storageCredentialId: 'AzureStorage', storageType: 'blobstorage', uploadArtifactsOnlyIfSuccessful: true, uploadZips: true
        }
    }
}
