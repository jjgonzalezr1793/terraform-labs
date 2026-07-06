resource "aws_instance" "server" {
  ami = lookup (var.ami, terraform.workspace)
  instance_type = lookup (var.instancia, terraform.workspace)
  subnet_id = var.subnet_id
  tags = {
    #owner = lookup (var.tag.owner, terraform.workspace)
    owner = var.tag.owner
    Name = "${terraform.workspace}-vm"
  } 
}