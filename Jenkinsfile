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
            archiveArtifacts artifacts: '**/*', followSymlinks: false, onlyIfSuccessful: true
            sh 'ls -la'
            azureUpload containerName: 'jenkinsblob', doNotUploadIndividualFiles: true, filesPath: '**/*', storageCredentialId: 'AzureStorage', storageType: 'blobstorage', uploadArtifactsOnlyIfSuccessful: true, uploadZips: true
        }
    }
}
