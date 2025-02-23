resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.tags["vpc_name"]
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}
