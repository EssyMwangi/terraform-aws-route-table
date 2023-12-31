## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route_table.private_attach_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.private_db_attach_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_attach_rtb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private_db_rtb_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_rtb_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_rtb_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_igw_id"></a> [igw\_id](#input\_igw\_id) | The ID of the IGW | `string` | n/a | yes |
| <a name="input_nat_id"></a> [nat\_id](#input\_nat\_id) | The ID of the NAT Gateway | `string` | n/a | yes |
| <a name="input_private_attach_subnets_cidrs"></a> [private\_attach\_subnets\_cidrs](#input\_private\_attach\_subnets\_cidrs) | CIDR Blocks to use for Private Attachment subnets | `list(string)` | `[]` | no |
| <a name="input_private_attach_subnets_id"></a> [private\_attach\_subnets\_id](#input\_private\_attach\_subnets\_id) | private subnets to attach | `list(string)` | `[]` | no |
| <a name="input_private_db_attach_subnets_id"></a> [private\_db\_attach\_subnets\_id](#input\_private\_db\_attach\_subnets\_id) | private subnets to attach | `list(string)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | n/a | yes |
| <a name="input_public_attach_subnets_cidrs"></a> [public\_attach\_subnets\_cidrs](#input\_public\_attach\_subnets\_cidrs) | CIDR Blocks to use for public Attachment subnets | `list(string)` | `[]` | no |
| <a name="input_public_attach_subnets_id"></a> [public\_attach\_subnets\_id](#input\_public\_attach\_subnets\_id) | public subnets to attach | `list(string)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | default region for resources | `string` | n/a | yes |
| <a name="input_rtb_cidr"></a> [rtb\_cidr](#input\_rtb\_cidr) | route table cidr | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_rtb_id"></a> [private\_rtb\_id](#output\_private\_rtb\_id) | Id of the Private Route Tables |
| <a name="output_public_rtb_id"></a> [public\_rtb\_id](#output\_public\_rtb\_id) | Id of the Public Route Tables |
