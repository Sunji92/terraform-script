## EC2 Security Group
resource "aws_security_group" "terraform-sg" {
  name        = "terraform-sg"
  description = "A security group made of terraform"
  vpc_id      = var.vpc-id

  ingress  {
        description      = "allow connect ssh"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "allow connect ssh"
        from_port        = 2302
        to_port          = 2302
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
	description 	 = "outbound any"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_connect_ssh"
  }
}
