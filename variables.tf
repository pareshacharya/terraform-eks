# Kubernetes version for the EKS cluster
variable "kubernetes_version" {
  description = "Desired Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.29" # latest stable as of 2025
  validation {
    condition     = can(regex("^(1\\.(2[7-9]|[3-9][0-9]))$", var.kubernetes_version))
    error_message = "Supported versions are 1.27 and above."
  }
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "The CIDR block must be a valid IPv4 CIDR, e.g., 10.0.0.0/16."
  }
}

# AWS Region
variable "aws_region" {
  description = "AWS region where the resources will be created"
  type        = string
  default     = "us-east-1" # us-west-1 has limited EKS support, use us-west-2 instead
  validation {
    condition     = can(regex("^(us|eu|ap|sa|ca|me|af)-[a-z]+-[0-9]{1}$", var.aws_region))
    error_message = "Must be a valid AWS region code, e.g., us-east-1."
  }
}
