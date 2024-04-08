terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.10.0"
    }
  }
}

provider "aws" {
    # Config options
    region = "us-east-1"
    access_key = "" 
    secret_key = ""
  
}