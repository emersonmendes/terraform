resource "aws_db_instance" "rds_postgres" {
  identifier                = var.db_identifier
  engine                    = "postgres"
  engine_version            = var.db_engine_version
  instance_class            = var.db_instance_class
  allocated_storage         = var.db_allocated_storage
  db_name                   = var.db_name
  username                  = var.db_username
  password                  = var.db_password
  publicly_accessible       = false
  skip_final_snapshot       = true
  backup_retention_period   = 7
  storage_encrypted         = true
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]
}

resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Habilita acesso ao RDS PostgreSQL"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}