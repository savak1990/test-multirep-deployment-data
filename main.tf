resource "aws_db_instance" "example" {
  identifier_prefix   = var.db_identifier_prefix
  instance_class      = "db.t4g.micro"
  skip_final_snapshot = true

  backup_retention_period = var.backup_retention_period

  replicate_source_db = var.replicate_source_db

  allocated_storage = var.replicate_source_db == null ? 10 : null
  engine            = var.replicate_source_db == null ? "mysql" : null
  db_name           = var.replicate_source_db == null ? var.db_name : null
  username          = var.replicate_source_db == null ? var.db_username : null
  password          = var.replicate_source_db == null ? var.db_password : null
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
