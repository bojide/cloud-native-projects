# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "cicd-github-actions-terraform-remote-state"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cicd-github-actions-terraform-state-lock"
  }
}
