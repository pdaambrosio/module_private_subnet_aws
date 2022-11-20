variable "vpc_id" {
  type = string
  description = "The ID of the VPC that this subnet belongs to."
  default = "vpc-1234567890"
}

variable "cidr_private_subnet" {
  type = string
  description = "The CIDR block for the private subnet."
  default = "10.0.1.0/24"
}

variable "private_subnet_name" {
  type = string
  description = "The name of the private subnet."
  default = "instace_subnet"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Indicates whether instances launched into the subnet should be assigned a public IP address."
  default = false
}

variable "enable_dns_support" {
  type = bool
  description = "A boolean flag to enable/disable DNS support in the subnet."
  default = true
}

variable "enable_dns_hostnames" {
  type = bool
  description = "A boolean flag to enable/disable DNS hostnames in the subnet."
  default = true
}

variable "extra_tags" {
  type        = map(any)
  description = "value of the tags to be added to the resources"
  default     = {}
}
