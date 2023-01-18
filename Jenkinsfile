pipeline{
    agent any
    tools {
        terraform 'terraform1.3.7'
    }
    stages{
        stage('Terraform fmt'){
            steps{
                echo 'formating code'
                sh 'terraform fmt -check'
            }
        }
        stage('Terraform Init'){
            steps{
                echo 'initializing'
                sh 'date'
                sh 'terraform init -auto-color'
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
