variable "env" {
  description = "Environment name (dev or prod)"
  type        = string
}
variable "public_subnet_ids" {
  description = "List of public subnet IDs to launch EC2 instances into"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs to launch EC2 instances into"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Instance type must be t3.micro, t3.small, or t3.medium."
  }
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_profile_name" {
  description = "IAM instance profile name to attach to the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID to create security groups in"
  type        = string
}

variable "asg_desired" {
  description = "Desired number of EC2 instances in the ASG"
  type        = number
}

variable "asg_min" {
  description = "Minimum number of EC2 instances in the ASG"
  type        = number
}

variable "asg_max" {
  description = "Maximum number of EC2 instances in the ASG"
  type        = number
}