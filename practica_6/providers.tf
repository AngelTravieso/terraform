terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.23.0, <6.27.0, !=6.26.0"
    }
  }
  #   required_version = "1.14.1" # strict version
  required_version = "~>1.14.0" # sub versions available
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}

# provider "aws" {
#   region = "us-east-2"
#   alias  = "ohio"
# }
