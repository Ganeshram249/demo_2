variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "az" {
  description = "Availability zone"
  type        = string
}

variable "tags" {
  description = "Tags for the subnet"
  type        = map(string)
}
