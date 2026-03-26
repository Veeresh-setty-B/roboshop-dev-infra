locals {
  ami_id = data.aws_ami.joindevops
}


locals {
  common_tags   =   {
    Name =  var.project
    Environment = var.environment
    Terraform = true
  }
  final_tags = merge(local.common_tags,{
    Name = "${var.project}-${var.environment}-bastion"
  }
  )
}
locals {
  public_subnet_ids = split(",",data.aws_ssm_parameter.public_subnet_ids)[0]
}