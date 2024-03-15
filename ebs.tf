module "ebs" {
  source = "./modules/ebs"

  depends_on = [
    module.vpc
  ]

  provider_config     = "aws"
  application_name    = "Test-App"
  environment_name    = "Test-Env-3"
  solution_stack_name = "64bit Amazon Linux 2023 v6.1.1 running Node.js 20"
  vpc                 = module.vpc.prod_vpc
  instance_subnet     = "${module.vpc.private_subnet_id_1}, ${module.vpc.private_subnet_id_2}"
  instance_type       = "t3.micro"
  key_pair            = "my-keypair"
  iaminstanceprofile  = "ec2-role-for-elasticbeanstalk"
  tier_name           = "WebServer"
  elbsubnet           = "${module.vpc.public_subnet_id_1}, ${module.vpc.public_subnet_id_2}"
  proxy_server        = "apache"
  loadbalancer_type   = "application"
  region              = "us-east-1"
}