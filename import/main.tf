resource "aws_instance" "demo-import" {
    ami = "ami-033b95fb8079dc481"
    instance_type = "t3a.nano"
    associate_public_ip_address = true
    availability_zone = "us-east-1c"
    subnet_id = "subnet-00865403abf9ec483"
}
