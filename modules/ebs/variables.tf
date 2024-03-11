variable "application_name" {
  type    = string
}

variable "environment_name" {
  type    = string
}

variable "solution_stack_name" {
  type    = string
}

variable "vpc" {
  type    = string
}

variable "instance_subnet" {
  type    = string
}

variable "instance_type" {
  type    = string
}

variable "key_pair" {
  type    = string
}

variable "iaminstanceprofile" {
  type    = string
}

variable "tier_name" {
  type    = string 
}

variable "elbsubnet" {
  type    = string
}

variable "proxy_server" {
  type    = string
}

variable "loadbalancer_type" {
  type    = string
  default = "application"

}
