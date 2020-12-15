module "instances" {
  source = "./ec2"
  service = ["web", "db", "app"]
}


output "public_IPs" {
  value = module.instances.public_IP
}