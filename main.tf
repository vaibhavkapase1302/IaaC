## EKS
module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  eks_on_demand_config = var.eks_on_demand_config
  eks_spot_config = var.eks_spot_config
}

# ECR Repository
module "ecr" {
  source = "./modules/ecr-repo"
}

# VPC
module "vpc" {
  source = "./modules/networking"
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  azs = var.azs
  public_subnets = var.public_subnets
}

# Load Balancer Controller
module "lb_controller" {
  source = "./modules/lb-controller"
  aws_region = var.aws_region
  cluster_name = var.cluster_name
  oidc_provider_arn          = module.eks.oidc_provider_arn
  cluster_oidc_issuer_url    = module.eks.cluster_oidc_issuer_url
}

# ESO (External Secrets Operator)
module "exteraml-secret-opr" {
  source = "./modules/external-secrets"
  
}

# Route 53
module "route53" {
  source = "./modules/route53"
}

module "ingress" {
  source = "./modules/ingress"
}