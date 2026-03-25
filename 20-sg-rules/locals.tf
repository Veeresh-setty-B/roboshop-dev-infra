locals {
  my_ip = chomp(data.http.my_public_ip_v4.response_body)
}
locals {
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
}