locals {
  filename = "test.txt"
}

module "file-module" {
  source = "./file-module"
  in-filename = local.filename
  in-content = "Este es el archivo #1"
  in-permission = "400"
}

module "file-module-dos" {
  source = "./file-module"

  in-filename = "dos.txt"
  in-content = "Este es el archivo #2"
  in-permission = "600"
}