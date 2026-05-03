# DB Security Group
resource "aws_security_group" "db" {
  name        = "${var.env}-db-sg"
  description = "Security group for RDS database"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.env}-db-sg"
  }
}

resource "aws_security_group_rule" "db_ingress_from_app" {
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  source_security_group_id = var.app_security_group_id
  security_group_id        = aws_security_group.db.id
  description              = "Allow PostgreSQL inbound from app instances only"
}

# DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name       = "${var.env}-db-subnet-group"
  subnet_ids = var.isolated_subnet_ids

  tags = {
    Name = "${var.env}-db-subnet-group"
  }
}

# RDS Instance
resource "aws_db_instance" "main" {
  identifier              = "${var.env}-db"
  engine                  = "postgres"
  engine_version          = var.engine_version
  instance_class          = var.db_instance_class
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  backup_retention_period = var.backup_retention_period
  deletion_protection     = var.deletion_protection

  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.db.id]

  multi_az            = true
  storage_encrypted   = true
  skip_final_snapshot = true

  tags = {
    Name = "${var.env}-db"
  }
}