resource "local_sensitive_file" "tempfile" {
  for_each          = toset(var.users)
  filename          = each.value
 
  #filename = var.users[count.index]
  content = "password: S3cr3tP@ssw0rd"
  #count = length(var.users)
}