## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elastic_beanstalk_application.custom_application](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_application) | resource |
| [aws_elastic_beanstalk_environment.custom_environment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_environment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | n/a | `string` | n/a | yes |
| <a name="input_elbsubnet"></a> [elbsubnet](#input\_elbsubnet) | n/a | `string` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | n/a | `string` | n/a | yes |
| <a name="input_iaminstanceprofile"></a> [iaminstanceprofile](#input\_iaminstanceprofile) | n/a | `string` | n/a | yes |
| <a name="input_instance_subnet"></a> [instance\_subnet](#input\_instance\_subnet) | n/a | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | n/a | yes |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | n/a | `string` | n/a | yes |
| <a name="input_loadbalancer_type"></a> [loadbalancer\_type](#input\_loadbalancer\_type) | n/a | `string` | `"application"` | no |
| <a name="input_provider_config"></a> [provider\_config](#input\_provider\_config) | n/a | `string` | n/a | yes |
| <a name="input_proxy_server"></a> [proxy\_server](#input\_proxy\_server) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_solution_stack_name"></a> [solution\_stack\_name](#input\_solution\_stack\_name) | n/a | `string` | n/a | yes |
| <a name="input_tier_name"></a> [tier\_name](#input\_tier\_name) | n/a | `string` | n/a | yes |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
