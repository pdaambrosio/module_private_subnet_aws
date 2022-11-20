# module_vpc_private_subnet_aws
Terraform module to create VPC on AWS with private subnet

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 cidr_private_subnet  = "10.0.1.0/24"
	 enable_dns_hostnames  = true
	 enable_dns_support  = true
	 extra_tags  = {}
	 map_public_ip_on_launch  = false
	 private_subnet_name  = "instace_subnet"
	 vpc_id  = "vpc-1234567890"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_private_subnet"></a> [cidr\_private\_subnet](#input\_cidr\_private\_subnet) | The CIDR block for the private subnet. | `string` | `"10.0.1.0/24"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | A boolean flag to enable/disable DNS hostnames in the subnet. | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | A boolean flag to enable/disable DNS support in the subnet. | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | value of the tags to be added to the resources | `map(any)` | `{}` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Indicates whether instances launched into the subnet should be assigned a public IP address. | `bool` | `false` | no |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | The name of the private subnet. | `string` | `"instace_subnet"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC that this subnet belongs to. | `string` | `"vpc-1234567890"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | The ID of the VPC |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->