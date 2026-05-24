resource "aws_security_group" "main" {
  description = var.sg_description
  vpc_id      = var.vpc_id
  tags = merge({Name = "sg-${var.components}-${local.common_name}"}, local.common_tags)
  egress {
   from_port        = 0
   to_port          = 0
   protocol         = "-1"
   cidr_blocks      = ["0.0.0.0/0"]
  }
}
