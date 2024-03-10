provider "aws" {
  region = "us-east-1"
}

module "ebs" {
  source = "./modules/ebs"

  application_name        = "Test-App-2"
  application_discription = "This application is created via terraform"
  environment_name        = "Test-Env-2"
  solution_stack_name     = "64bit Amazon Linux 2023 v6.1.1 running Node.js 20"
  vpc                     = "vpc-02da4ca3dec9e49b6"
  instance_subnets        = "subnet-094177f911e35a0f5"
  instance_type           = "t3.micro"
  key_pair                = "my-keypair"
  iaminstanceprofile      = "ec2-role-for-elasticbeanstalk"
  tier_name               = "WebServer"
  elbsubnet1              = "subnet-099db029060d0182a"
  elbsubnet2              = "subnet-0e1ae9bc223da2474"
}

module "ebs_2" {
  source = "./modules/ebs"

  application_name        = "Test-App-3"
  application_discription = "This application is created via terraform"
  environment_name        = "Test-Env-3"
  solution_stack_name     = "64bit Amazon Linux 2023 v6.1.1 running Node.js 20"
  vpc                     = "vpc-02da4ca3dec9e49b6"
  instance_subnets        = "subnet-094177f911e35a0f5"
  instance_type           = "t3.micro"
  key_pair                = "my-keypair"
  iaminstanceprofile      = "ec2-role-for-elasticbeanstalk"
  tier_name               = "WebServer"
  elbsubnet1              = "subnet-099db029060d0182a"
  elbsubnet2              = "subnet-0e1ae9bc223da2474"

}
