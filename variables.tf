variable "vpc_id" {
  type = string
  description = "provide vpc_id"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_cidr" {
  type = list
}

variable "sg_tags" {
  type = map
}

variable "ingress_ports" {
  type = map
}

variable "egress_ports" {
  type = map
}

variable "sg_protocol" {
  type = map
}