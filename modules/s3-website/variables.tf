variable "provider_config" {
  type = string
}

variable "region" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "bucket_name_tag" {
  type = string
}

variable "index_document" {
  type = string
  default = "index.html"
}

variable "error_document" {
  type = string
  default = "index.html"
}

variable "versioning" {
  type = string
  default = "Enabled"
}

variable "ownership" {
  type = string
  default = "BucketOwnerPreferred"
}

variable "public_acls" {
  type = bool
  default = "false"
}

variable "block_public" {
  type = bool
  default = "false"
}

variable "ignore_public_acls" {
  type = bool
  default = "false"
}

variable "restrict_public_buckets" {
  type = bool
  default = "false"
}

variable "acl" {
  type = string
  default = "public-read"
}