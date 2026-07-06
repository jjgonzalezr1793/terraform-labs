#output "ip" {
 # value = aws_vpc.vpc.id
#}

output "instance_id" {
  value = aws_instance.server.id
}

output "instance_name" {
  value = aws_instance.server.tags.Name
}

output "availability_zone" {
  value = aws_instance.server.availability_zone
}
