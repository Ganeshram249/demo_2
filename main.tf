provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-fxohd5hi"
    key            = "statefile/terraform.tfstate"
  }
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  tags     = var.vpc_tags
}

module "subnet" {
  source     = "./modules/subnet"
  vpc_id     = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  az         = var.az
}

module "ec2_instance" {
  source           = "./modules/ec2"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  subnet_id        = module.subnet.subnet1_id
  security_group_ids = var.security_group_ids
}
