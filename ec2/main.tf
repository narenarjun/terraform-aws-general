resource "aws_instance" "myfirstec2" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  tags = {
    Name = "simplefirstEC2"
  }
}