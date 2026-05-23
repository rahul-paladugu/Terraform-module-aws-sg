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

variable "component" {
  type = string
}