variable "aws_region" {
  description = "value for AWS region"
  type        = string
  # default = "us-east-1"
}

variable "cluster_name" {
  description = "value for EKS cluster name"
  type        = string
  # default = "fampay-eks-cluster"
}

variable "oidc_provider_arn" {
  description = "value for OIDC provider ARN"
  type = string
}

variable "cluster_oidc_issuer_url" {
  description = "value for OIDC issuer URL"
  type = string
}
