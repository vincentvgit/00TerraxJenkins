pipeline{
    agent any
    
    tools {
        terraform 'terra'
    }
     stages{
        
        stage('Git Checkout'){
            steps{
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vincentvgit/tom-TerraxJenkins']])
            }
        }
        
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform plan'){
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
