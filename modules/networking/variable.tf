variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
#   default     = "fampay-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
#   default     = ""
}

variable "azs" {
  description = "List of Availability Zones to use"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnets"
  type = list(string)
}