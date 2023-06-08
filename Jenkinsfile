pipeline{
    agent any
    tools {
        terraform 'Terraform'
    }
     stages{
        stage('Git Checkout'){
            steps{
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Nevralgie/TerraxJenkins']])
            }
        }
        
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform paln'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply -auto-approve'
            }
    }
}
}
