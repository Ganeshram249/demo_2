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

ami_id            = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
instance_type     = "t2.micro"
key_name          = "devops"
#subnet_id         = "subnet-0bb1c79de3EXAMPLE"
security_group_ids = ["sg-0a1b2c3d4e5f6g7h8"]
ec2_tags = {
  Name = "my_ec2_instance"
}

