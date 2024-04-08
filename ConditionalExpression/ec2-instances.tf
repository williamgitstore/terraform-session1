resource "aws_instance" "dev" {
  count = var.is_dev_environment == true? 1:0
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.nano"
  tags = {
    Name = "dev-ec2"
  }
}

resource "aws_instance" "prod" {
  count = var.is_dev_environment == false? 1:0
  #count =2 if you want to create 2 prod ec2 instance
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.micro"
  tags = {
    Name = "prod-ec2"
  }
}

# conditional_expression -> condtion? true_value:false_value