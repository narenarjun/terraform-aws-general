resource "aws_instance" "thirdec2" {
  ami             = "ami-04d29b6f966df1537"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.web_traffic.name]
  tags = {
    Name = "SG EC2"
  }
}

resource "aws_security_group" "web_traffic" {
  name = "https allowed"
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_eip" "elastic_ip" {
  instance = aws_instance.thirdec2.id
}

output "Public_IP" {
  value = aws_eip.elastic_ip.public_ip
}
