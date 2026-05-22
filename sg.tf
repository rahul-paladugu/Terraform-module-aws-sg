resource "aws_security_group" "main" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id
  tags = var.sg_tags
}

resource "aws_security_group_rule" "ingress" {
  for_each = var.ingress_ports
  type              = "ingress"
  from_port         = each.port.value
  to_port           = each.port.value
  protocol          = var.sg_protocol
  cidr_blocks       = var.sg_cidr
  security_group_id = aws_security_group.main.id
}

resource "aws_security_group_rule" "egress" {
  for_each = var.egress_ports
  type              = "egress"
  from_port         = each.port.value
  to_port           = each.port.value
  protocol          = var.sg_protocol
  cidr_blocks       = var.sg_cidr
  security_group_id = aws_security_group.main.id
}