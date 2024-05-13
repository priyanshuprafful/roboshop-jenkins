terraform {
  backend "s3" {
    bucket = "terraform-saraldevops"
    key = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}