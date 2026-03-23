data "aws_ssm_parameter" "vpc_id" {
name = "${var.project}/${var.environment}/vpc_id"
with_decryption = catching the id from parameter store
}
