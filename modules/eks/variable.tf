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
