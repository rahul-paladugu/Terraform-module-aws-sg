locals {
  common_name = "${var-environment}-${var.project}"
  common_tags = {Terraform = "True"}
}