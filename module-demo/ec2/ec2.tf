variable "ec2name" {
  type = string
}

resource "aws_instance" "moduleEC2" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  tags = {
    Name = var.ec2name
  }
}