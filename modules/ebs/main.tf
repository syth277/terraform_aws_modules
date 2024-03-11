provider "aws" {
  region = "us-east-1"
}

resource "aws_elastic_beanstalk_application" "custom_application" {
  name        =  var.application_name
}

resource "aws_elastic_beanstalk_environment" "custom_environment" {
  name                = var.environment_name
  application         = aws_elastic_beanstalk_application.custom_application.name
  solution_stack_name = var.solution_stack_name
  tier                = var.tier_name

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = var.vpc
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = var.instance_subnet
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.instance_type
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = var.key_pair
  }
  
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = var.iaminstanceprofile
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBSubnets"
    value     = var.elbsubnet
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment:proxy"
    name      = "ProxyServer"
    value     = var.proxy_server
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "LoadBalancerType"
    value     =  var.loadbalancer_type
  }

}