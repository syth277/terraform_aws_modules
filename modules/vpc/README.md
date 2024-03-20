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
| [aws_eip.my_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.my_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.my_nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.my_private_route_table_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.my_private_route_table_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.my_public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.my_private_route_table_association_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.my_private_route_table_association_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.my_public_route_table_association_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.my_public_route_table_association_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.my_private_subnet_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.my_private_subnet_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.my_public_subnet_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.my_public_subnet_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.my_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach"></a> [attach](#input\_attach) | n/a | `string` | `"vpc"` | no |
| <a name="input_dns_hostnames"></a> [dns\_hostnames](#input\_dns\_hostnames) | n/a | `string` | `"true"` | no |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | n/a | `string` | `"true"` | no |
| <a name="input_private_avl_zone_1"></a> [private\_avl\_zone\_1](#input\_private\_avl\_zone\_1) | n/a | `string` | n/a | yes |
| <a name="input_private_avl_zone_2"></a> [private\_avl\_zone\_2](#input\_private\_avl\_zone\_2) | n/a | `string` | n/a | yes |
| <a name="input_private_route_cidr_1"></a> [private\_route\_cidr\_1](#input\_private\_route\_cidr\_1) | n/a | `string` | `"0.0.0.0/0"` | no |
| <a name="input_private_route_cidr_2"></a> [private\_route\_cidr\_2](#input\_private\_route\_cidr\_2) | n/a | `string` | `"0.0.0.0/0"` | no |
| <a name="input_private_subnet_cidr_1"></a> [private\_subnet\_cidr\_1](#input\_private\_subnet\_cidr\_1) | n/a | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_2"></a> [private\_subnet\_cidr\_2](#input\_private\_subnet\_cidr\_2) | n/a | `string` | n/a | yes |
| <a name="input_provider_config"></a> [provider\_config](#input\_provider\_config) | n/a | `string` | n/a | yes |
| <a name="input_public_avl_zone_1"></a> [public\_avl\_zone\_1](#input\_public\_avl\_zone\_1) | n/a | `string` | n/a | yes |
| <a name="input_public_avl_zone_2"></a> [public\_avl\_zone\_2](#input\_public\_avl\_zone\_2) | n/a | `string` | n/a | yes |
| <a name="input_public_route_cidr"></a> [public\_route\_cidr](#input\_public\_route\_cidr) | n/a | `string` | `"0.0.0.0/0"` | no |
| <a name="input_public_subnet_cidr_1"></a> [public\_subnet\_cidr\_1](#input\_public\_subnet\_cidr\_1) | n/a | `string` | n/a | yes |
| <a name="input_public_subnet_cidr_2"></a> [public\_subnet\_cidr\_2](#input\_public\_subnet\_cidr\_2) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_vpc_tenancy"></a> [vpc\_tenancy](#input\_vpc\_tenancy) | n/a | `string` | `"default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_id_1"></a> [private\_subnet\_id\_1](#output\_private\_subnet\_id\_1) | n/a |
| <a name="output_private_subnet_id_2"></a> [private\_subnet\_id\_2](#output\_private\_subnet\_id\_2) | n/a |
| <a name="output_prod_vpc"></a> [prod\_vpc](#output\_prod\_vpc) | n/a |
| <a name="output_public_subnet_id_1"></a> [public\_subnet\_id\_1](#output\_public\_subnet\_id\_1) | n/a |
| <a name="output_public_subnet_id_2"></a> [public\_subnet\_id\_2](#output\_public\_subnet\_id\_2) | n/a |
