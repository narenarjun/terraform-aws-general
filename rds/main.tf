resource "aws_db_instance" "myfirstRDS" {
  name = "mydb"
  identifier = "my-first-rds-instance"
  instance_class = "db.t2.micro"
  engine = "mariadb"
  engine_version = "10.4.8"
  username = "john"
  password = "password123"
  port = 3306
  allocated_storage = 20
  skip_final_snapshot = true
}