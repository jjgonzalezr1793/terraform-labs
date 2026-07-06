module "vpc" {
  source = "./network"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  tag = var.tag
}

module "vm" {
  source = "./infra"
  ami = var.ami
  subnet_id = module.vpc.subnet_id
  instancia = var.instancia
  region = var.region
  tag = var.tag
}