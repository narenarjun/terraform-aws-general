resource "aws_iam_user" "mainuser" {
  name = "MainUser"
}

module "ec2module" {
  source = "./ec2"
  ec2name = "My First Module"
}