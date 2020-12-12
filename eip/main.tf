resource "aws_instance" "secondec2" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  tags = {
    Name = "Public IPs"
  }
}

resource "aws_eip" "elastic_ip" {
  instance = "${aws_instance.secondec2.id}"
}

output "Public_IP" {
  value = "${aws_eip.elastic_ip.public_ip}"
}