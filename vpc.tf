provider "aws" {
}

module "vpc" {
  source          = "./modules/vpc"
  provider_config = "aws"

  region = "us-east-1"

  vpc_cidr = "192.168.0.0/16"

  private_subnet_cidr_1 = "192.168.10.0/24"
  private_avl_zone_1    = "us-east-1a"

  private_subnet_cidr_2 = "192.168.20.0/24"
  private_avl_zone_2    = "us-east-1b"


  public_subnet_cidr_1 = "192.168.30.0/24"
  public_avl_zone_1    = "us-east-1a"

  public_subnet_cidr_2 = "192.168.40.0/24"
  public_avl_zone_2    = "us-east-1b"

}