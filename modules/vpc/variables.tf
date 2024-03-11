variable "vpc_cidr" {
  type = string
}

variable "vpc_tenancy" {
  type = string
  default = "default"
}

variable "dns_support" {
  type = string
  default = "true"
}

variable "dns_hostnames" {
  type = string
  default = "true"
}

variable "private_subnet_cidr" {
   type = string
}

variable "private_avl_zone" {
   type = string
}

variable "public_subnet_cidr" {
   type = string
}

variable "public_avl_zone" {
   type = string
}