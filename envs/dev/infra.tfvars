# env = "dev"
# region = "us-east-1"
# aws_region = "us-east-1"

# EKS cluster configuration variables
cluster_version = "1.32"
cluster_name = "fampay-eks-cluster"

# Define the EKS node group configurations

eks_on_demand_config = {
  desired_size   = 3
  max_size       = 5
  min_size       = 1
  instance_types = ["t2.medium"]
}

eks_spot_config = {
  desired_size   = 2
  max_size       = 3
  min_size       = 1
  instance_types = ["t3.medium", "t2.medium"]
}

# VPC configuration
vpc_name = "fampay-vpc"
vpc_cidr = "10.0.0.0/16"
azs = ["us-east-1a", "us-east-1b"]
public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

