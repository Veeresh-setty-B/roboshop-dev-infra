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
    bucket         = "roboshop-dev-infra-terraform"   # S3 bucket name 
    key            = "roboshop-dev-infra-terraform.bastion"      # Deleted Path inside the bucket
    region         = "us-east-1"                    # AWS region
    encrypt        = true                           # Enable server-side encryption
    use_lockfile = true
    
  }
}
provider "aws" {
  region = "us-east-1"
}