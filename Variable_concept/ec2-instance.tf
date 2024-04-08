resource "aws_instance" "webserver1" {
    #webinternal is the loacl name and not instance name , it is used by terraform internally
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.micro"
  tags = {
    Name = var.name
  }
}