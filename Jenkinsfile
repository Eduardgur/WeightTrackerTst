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
            // sh "tar --exclude='.git' --exclude='.gitignore' --exclude='Jenkinsfile' --exclude='README.md' --exclude='app.tar.gz' -czvf app.tar.gz ."
            // azureUpload containerName: 'jenkinsblob', doNotUploadIndividualFiles: true, filesPath: '*.tar.gz', storageCredentialId: 'AzureStorage', storageType: 'blobstorage', uploadArtifactsOnlyIfSuccessful: true, uploadZips: true
            azureUpload containerName: 'jenkinsblob', doNotUploadIndividualFiles: true, filesPath: '**/*', excludeFilesPath: '.git, .gitignore, README.md, Jenkinsfile' , storageCredentialId: 'AzureStorage', storageType: 'blobstorage', uploadArtifactsOnlyIfSuccessful: true, uploadZips: true
        }
    }
}
