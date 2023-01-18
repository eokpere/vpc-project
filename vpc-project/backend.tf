#backend
 terraform {
  backend "s3" {
    bucket = "eva-buc-terraform"
    key    = "vpc-project/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "ca-central-1"
  }
}
