resource "local_file" "password" {
  content  = "Password: ${random_string.iac_random.id}"
  filename = "password.txt"
  file_permission = "0400"
  directory_permission = "0600"
}