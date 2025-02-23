variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The key pair name for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs for the EC2 instance"
  type        = list(string)
}

variable "tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
}
