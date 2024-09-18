resource "aws_db_instance" "example" {
  identifier_prefix   = var.db_identifier_prefix
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t4g.micro"
  skip_final_snapshot = true

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password
}
