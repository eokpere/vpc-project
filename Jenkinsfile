pipeline{
    agent any
    tools {
        terraform 'terraform1.3.7'
    }
    stages{
        stage('git checkout'){
            steps{
                git branch: 'main', credentialsId: '44ca5028-2103-4d6d-93a2-d249fad8cda6', url: 'https://github.com/eokpere/vpc-project'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform validate'){
            steps{
                sh 'terraform validate'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
