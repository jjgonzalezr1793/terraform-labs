variable "region" {
  type = map(any)
  default = {
    "dev" = "us-east-1"
    "prod" = "us-east-2"
  }
}
  variable "ami" {
  type = map(any)
  default = {
    "dev" = "ami-033b95fb8079dc481"
    "prod" = "ami-0b614a5d911900a9b"
  }
}

variable "instancia" {
  type = map(any)
  default = {
    "dev" = "t3a.nano"
    "prod" = "t3a.micro"
  }
}

variable "vpc_cidr" {
  type = map(any)
  default = {
    "dev" = "10.0.0.0/24"
    "prod" = "10.0.0.0/24"
  }
}

variable "subnet_cidr" {
  type = map(any)
  default = {
    "dev" = "10.0.0.0/28"
    "prod" = "10.0.0.0/28"
  }
}

variable "tag" {
  type = map(any)
  default = {
    "owner" = "Jhoan Gonzalez"
  }
}