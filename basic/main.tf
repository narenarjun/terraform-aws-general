# ! creating first vpc in aws
resource "aws_vpc" "myfirstvpc" {
  cidr_block = "10.0.0.0/16"
}

# ! outputting the vpc value
output "myfirstvpc" {
  value = aws_vpc.myfirstvpc
}