variable "service" {
  type = list(any)
}

resource "aws_instance" "simpleec2" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  count         = length(var.service)
  associate_public_ip_address = true
  tags = {
    Name = var.service[count.index]
  }
}

output "public_IP" {
  value = aws_instance.simpleec2.*.public_ip
}