variable "db_username" {
  description = "The username for the database"
  type = string
  sensitive = true
}

variable "db_password" {
  description = "The password for the database"
  type = string
  sensitive = true
}

variable "db_identifier_prefix" {
  description = "Identfier prefix of Database"
  type = string
}

variable "db_name" {
  description = "Name of the database"
  type = string
}
