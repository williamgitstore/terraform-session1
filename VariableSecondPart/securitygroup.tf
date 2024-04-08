resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"

  ingress {
    from_port        = var.port-1 #var.port_numbers[0]
    to_port          = var.port-1 #var.port_numbers[0]
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }

  ingress {
    from_port        = var.port-2 #var.port_numbers[1]
    to_port          = var.port-2 #var.port_numbers[1]
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }

  ingress {
    from_port        = var.port-3 #var.port_numbers[2]
    to_port          = var.port-3 #var.port_numbers[2]
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }

  ingress {
    from_port        = var.port-4 #var.port_numbers[3]
    to_port          = var.port-4 #var.port_numbers[3]
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
