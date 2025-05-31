variable "aws_region" {
  description = "value for AWS region"
  type        = string
  default = "us-east-1"
}

variable "cluster_name" {
  description = "value for EKS cluster name"
  type = string
  # default = "fampay-eks-cluster"
}

variable "cluster_version" {
  description = "value for EKS cluster version"
  type        = string
  # default = "1.32"
}
variable "alb_dns_name" {
  default = "fampay-alb-2139775353.us-east-1.elb.amazonaws.com"
}

variable "alb_hosted_zone_id" {
  default = "Z35SXDOTRQ7X7K"
}

variable "subdomain_name" {
  default = "dayxcode.com"
}

variable "domain" {
  default = "dayxcode.com"
}

variable "eks_on_demand_config" {
  description = "Node group config for on-demand nodes"
  type = object({
    desired_size   = number
    max_size       = number
    min_size       = number
    instance_types = list(string)
  })
}

variable "eks_spot_config" {
  description = "Node group config for spot nodes"
  type = object({
    desired_size   = number
    max_size       = number
    min_size       = number
    instance_types = list(string)
  })
}

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

