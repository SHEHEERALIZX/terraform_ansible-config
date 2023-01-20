resource "aws_instance" "web" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = var.instance_type
  count         = 1
  key_name      = var.key
   vpc_security_group_ids = [aws_security_group.TF_SG.id]
  tags = {
    Name = "AmazonLinux"
  }
}
