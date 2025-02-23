resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.web_sg_id

}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}
