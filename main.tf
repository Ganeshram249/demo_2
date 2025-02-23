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
  tags       = var.subnet_tags
}
