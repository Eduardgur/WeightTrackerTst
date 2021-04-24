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
            sh "tar --exclude='.git' --exclude='.gitignore' --exclude='Jenkinsfile' -czvf app.tar.gz ."
            sh 'ls -la'
            azureUpload containerName: 'jenkinsblob', doNotUploadIndividualFiles: true, filesPath: '*.tar.gz', storageCredentialId: 'AzureStorage', storageType: 'blobstorage', uploadArtifactsOnlyIfSuccessful: true, uploadZips: true
        }
    }
}
