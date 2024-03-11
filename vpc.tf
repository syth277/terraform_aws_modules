provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr = "192.168.0.0/16"
  private_subnet_cidr =  "192.168.56.0/24"
  private_avl_zone = "us-east-1a"

  public_subnet_cidr =  "192.168.55.0/24"
  public_avl_zone = "us-east-1b"

}