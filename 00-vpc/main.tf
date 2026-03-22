module "vpc" {
  source = "git::https://github.com/Veeresh-setty-B/terraform-aws-vpc.git?ref=main"
  project = "Roboshop"
  environment = "dev"
  is_peering_required = true
}