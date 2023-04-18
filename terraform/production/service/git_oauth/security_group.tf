resource "aws_security_group" "aws_sg_allow_http_from_app_gateway" {
  name        = "allow_http_from_app_gateway"
  description = "Allow HTTP inbound traffic from app gateway instance"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description      = "HTTP from app gateway "
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.vpc1.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_http_from_app_gateway"
  }
}

resource "aws_security_group" "aws_sg_allow_tls_from_app_gateway" {
  name        = "allow_tls_from_app_gateway"
  description = "Allow TLS inbound traffic from app gateway instance"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description      = "TLS from app gateway "
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.vpc1.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls_from_app_gateway"
  }
}