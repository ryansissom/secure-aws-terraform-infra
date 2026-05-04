variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones to deploy into"
  type        = list(string)
}

variable "env" {
  description = "Environment name (dev or prod)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "asg_min" {
  description = "Minimum number of instances in the ASG"
  type        = number
}

variable "asg_desired" {
  description = "Desired number of instances in the ASG"
  type        = number
}

variable "asg_max" {
  description = "Maximum number of instances in the ASG"
  type        = number
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "db_username" {
  description = "Master username for the database"
  type        = string
}

variable "db_password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
}

variable "backup_retention_period" {
  description = "Number of days to retain automated backups"
  type        = number
}

variable "deletion_protection" {
  description = "Whether to enable deletion protection"
  type        = bool
}

variable "alarm_email" {
  description = "Email address to send alarm notifications to"
  type        = string
}

variable "cpu_utilization_threshold" {
  description = "CPU utilization percentage to trigger alarm"
  type        = number
}

variable "rds_storage_threshold" {
  description = "Free storage in bytes to trigger alarm"
  type        = number
}

variable "rds_connections_threshold" {
  description = "Number of DB connections to trigger alarm"
  type        = number
}

variable "rds_memory_threshold" {
  description = "Freeable memory in bytes to trigger alarm"
  type        = number
}

variable "alb_5xx_threshold" {
  description = "Number of 5xx errors to trigger alarm"
  type        = number
}

variable "alb_response_time_threshold" {
  description = "ALB response time in seconds to trigger alarm"
  type        = number
}