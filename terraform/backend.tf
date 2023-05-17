terraform {
  backend "s3" {
    bucket = "devopsprojectsbucket1"
    region = "us-east-1"
    key    = "main/terraform.tfstate"
  }
}