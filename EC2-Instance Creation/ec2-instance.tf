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

resource "aws_instance" "webinternal" {
    #webinternal is the loacl name and not instance name , it is used by terraform internally
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.micro"
  tags = {
    Name = "web instacne" #this is instance name
  }
}

#Now you can run beow commands which will create instance 
#Terraform init
#Terraform plan
#Terraform apply