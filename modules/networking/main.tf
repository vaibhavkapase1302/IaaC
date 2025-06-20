module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs            = var.azs
  public_subnets = var.public_subnets

  # name = "fampay-vpc"
  # cidr = "10.0.0.0/16"

  # azs            = ["us-east-1a", "us-east-1b"]
  # public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

  #   private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]

  enable_nat_gateway = false
  single_nat_gateway = false

  map_public_ip_on_launch = true

  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    "kubernetes.io/role/elb"                   = "1"
    "kubernetes.io/cluster/fampay-eks-cluster" = "shared"
  }

  tags = {
    Environment = "fampay"
    Terraform   = "true"
  }
}