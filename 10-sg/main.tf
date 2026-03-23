module "sg" {
  count = lenght(var.sg_name)
  source = "../../terraform-aws-sg"
  project = var.project
  sg_name = var.sg_name[count.index]
  vpc_id = local.vpc_id
}