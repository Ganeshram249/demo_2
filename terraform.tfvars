region      = "us-west-2"
vpc_cidr    = "10.0.0.0/16"
subnet_cidr = "10.0.1.0/24"
az          = "us-west-2a"
vpc_tags = {
  vpc_name = "main_vpc"
}
subnet_tags = {
  subnet_name = "subnet_1"
}
