output "instance_id" {
  value = module.vm.instance_id
}

output "instance_name" {
  value = module.vm.instance_name
}

output "availability_zone" {
  value = module.vm.availability_zone
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "tag_owner" {
  value = module.vm
}