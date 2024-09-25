terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81s-vijay-state"
    key = "expense-vpcc"
    region = "us-east-1"
    dynamodb_table = "81s-vijay-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}