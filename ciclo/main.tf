resource "local_file" "archivo" {
  filename        = var.filename
  file_permission = "0777"
  content         = "Contenido final"

   lifecycle {
    prevent_destroy = false
    # ignore_changes = [ content ]

   }
}


moved {
  from = local_file.file
  to   = local_file.archivo
}