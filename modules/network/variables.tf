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
