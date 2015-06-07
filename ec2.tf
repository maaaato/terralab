variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}

provider "aws" {
    access_key = "${var.aws_access_key_id}"
    secret_key = "${var.aws_secret_access_key}"
    region = "ap-northeast-1"
}

resource "aws_instance" "example" {
    ami = "ami-cbf90ecb"
    instance_type = "t2.micro"
}