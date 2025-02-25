variable "aws_region" {
  description = "Região da AWS"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "Perfil da AWS"
  default     = "emerson"
}

variable "db_identifier" {
  description = "Identificador do banco de dados"
  default     = "test-rds"
}

variable "db_name" {
  description = "DB For Test"
  default     = "dbtest"
}

variable "db_username" {
  description = "User for db test"
  default     = "postgres"
}

variable "db_password" {
  description = "Pass for db test"
  sensitive  = true
}

variable "db_instance_class" {
  description = "RDS Instance Type"
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Storage Size GB"
  default     = 20
}

variable "db_engine_version" {
  description = "Versão do PostgreSQL"
  default     = "16.3"
}