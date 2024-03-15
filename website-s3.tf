
module "s3-website" {
  source = "./modules/s3-website"



  provider_config = "aws"
  region          = "us-east-1"
  bucket_name     = "static-website-29424"
  bucket_name_tag = "qa-sandbox-website"



}