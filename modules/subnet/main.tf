resource "aws_subnet" "subnet1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az

}

output "subnet1_id" {
  value = aws_subnet.subnet1.id
}
