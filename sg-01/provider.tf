terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.1"
    }
  }
  backend "s3" {
    bucket = "daws78s-kedarnarnth-lcoking"
    key    = "path/to/my/key"
    region = "us-east-1"
    dynamodb_table  = "expense-locking"
  }
}


provider "aws" {
 region = "us-east-1"
}