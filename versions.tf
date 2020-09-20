terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
  required_version = ">= 0.13"
}
