resource "aws_subnet" "private_subnet" {
  vpc_id                  = var.aws_vpc_id
  cidr_block              = var.cidr_private_subnet
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge({
    Name = "${var.vpc_name}"
  }, var.extra_tags)
}