resource "tls_private_key" "privatekey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "keysensitivefile" {
  content = tls_private_key.privatekey.private_key_pem
  filename = "${var.key_name}.pem"
}


#-------S3

resource "aws_s3_bucket" "bucket_name" {
  bucket = var.bucket_name # el nombre del bucket debe ser unico.

	tags = {
    Name        = "practica 1"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.bucket_name.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.bucket_name.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
	depends_on = [ aws_s3_bucket_ownership_controls.owner, aws_s3_bucket_public_access_block.access ]

  bucket = aws_s3_bucket.bucket_name.id
  acl    = "public-read"
}

resource "aws_s3_object" "demo_file" {
  bucket      = aws_s3_bucket.bucket_name.id
  key    = "${var.key_name}.pem"
  source = local_sensitive_file.keysensitivefile.filename
}

##---------VPC

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.student_name
  }
}

