terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket         = "remote-state-veereshsetty"   # S3 bucket name (deleted)
    key            = "remote-state.tfstate"      # Deleted Path inside the bucket
    region         = "us-east-1"                    # AWS region
    encrypt        = true                           # Enable server-side encryption
    use_lockfile = true
    
  }
}
provider "aws" {
  region = "us-east-1"
}