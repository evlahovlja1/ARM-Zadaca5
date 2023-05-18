terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project = "ARM_Zadaca_5"
    }
  }
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}
