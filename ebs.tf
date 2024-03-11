provider "aws" {
  region = "us-east-1"
}

module "ebs_2" {
  source = "./modules/ebs"

  application_name    = "Test-App"
  environment_name    = "Test-Env-3"
  solution_stack_name = "64bit Amazon Linux 2023 v6.1.1 running Node.js 20"
  vpc                 = "vpc-028ca6670535b88be"
  instance_subnet     = "subnet-0999834ab9fe4248f, subnet-006616b3c60da6cd8"
  instance_type       = "t3.micro"
  key_pair            = "my-keypair"
  iaminstanceprofile  = "ec2-role-for-elasticbeanstalk"
  tier_name           = "WebServer"
  elbsubnet           = "subnet-0c46a1afd963e8946, subnet-0cdf033e4d1b14386"
  proxy_server        = "apache"
  loadbalancer_type   = "application"
}
