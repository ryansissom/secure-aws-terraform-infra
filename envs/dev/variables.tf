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
