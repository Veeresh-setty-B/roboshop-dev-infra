resource "aws_ssm_parameter" "sg_id" {
  count = length(/var.sg_name")
  name  = "var.sg_name[count.index]/sg-id")
  type  = "list"
  value = module.sg_name[count.index].sg_id
}