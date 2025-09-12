terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "jigar-terraform-state-bucket"   # create this S3 bucket before first run
    key            = "infra/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"             # create DynamoDB table with primary key LockID
  }
}

provider "aws" {
  region = "ap-south-1"
}
