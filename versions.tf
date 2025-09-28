terraform {
  # Terraform CLI version
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"   # v6.x since you don't want to downgrade
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.30"  # latest 2.x line
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"   # latest 3.x
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"   # latest 2.x
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"   # latest 3.x
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3"   # latest 2.x
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"   # latest 4.x
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13"  # latest 0.13.x
    }
  }
}
