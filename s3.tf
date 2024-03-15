module "s3_bucket" {
  source          = "./modules/s3"
  provider_config = "aws"


  region            = "us-east-1"
  bucket            = "qa-test43-bucket"
  versioning_status = "Enabled"


}