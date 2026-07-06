output "vpc" {
  value = aws_vpc.vpc.id
}

output "bucked_url" {
  value = "${aws_s3_bucket.bucket_name.bucket}.s3.amazonaws.com/${aws_s3_object.demo_file.key}"
}