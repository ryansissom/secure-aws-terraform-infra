variable "env" {
  description = "Environment name (dev or prod)"
  type        = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group to monitor"
  type        = string
}

variable "alb_arn_suffix" {
  description = "ALB ARN suffix for CloudWatch metrics"
  type        = string
}

variable "target_group_arn_suffix" {
  description = "Target group ARN suffix for CloudWatch metrics"
  type        = string
}

variable "db_identifier" {
  description = "RDS instance identifier"
  type        = string
}

variable "alarm_email" {
  description = "Email address to send alarm notifications to"
  type        = string
}

variable "cpu_utilization_threshold" {
  description = "CPU utilization percentage to trigger alarm"
  type        = number
  default     = 80
}

variable "rds_storage_threshold" {
  description = "Free storage in bytes to trigger alarm"
  type        = number
  default     = 10000000000 # 10GB
}

variable "rds_memory_threshold" {
  description = "Freeable memory in bytes to trigger alarm"
  type        = number
  default     = 256000000 # 256MB
}

variable "rds_connections_threshold" {
  description = "Number of DB connections to trigger alarm"
  type        = number
  default     = 100
}

variable "alb_5xx_threshold" {
  description = "Number of 5xx errors to trigger alarm"
  type        = number
  default     = 10
}

variable "alb_response_time_threshold" {
  description = "ALB response time in seconds to trigger alarm"
  type        = number
  default     = 2
}