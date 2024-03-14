variable "provider_config" {
  type = string
}

variable "region" {
  type = string
}

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

variable "private_subnet_cidr_1" {
   type = string
}

variable "private_subnet_cidr_2" {
   type = string
}

variable "private_avl_zone_1" {
   type = string
}

variable "private_avl_zone_2" {
   type = string
}

variable "public_subnet_cidr_1" {
   type = string
}

variable "public_subnet_cidr_2" {
   type = string
}

variable "public_avl_zone_1" {
   type = string
}

variable "public_avl_zone_2" {
   type = string
}

variable "public_route_cidr" {
   type = string
   default = "0.0.0.0/0"
}

variable "private_route_cidr_1" {
   type = string
   default = "0.0.0.0/0"
}

variable "private_route_cidr_2" {
   type = string
   default = "0.0.0.0/0"
}

variable "attach" {
   type = string
   default = "vpc" 
}