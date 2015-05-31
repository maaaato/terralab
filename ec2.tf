variable "aws_secret_access_key" {}
variable "aws_access_key_id" {}

provider "aws" {
    access_key = ${var.aws_access_key_id}
    secret_key = ${var.aws_secret_access_key}
    region = "ap-northeast-1"
}

resource "aws_instance" "example" {
    ami = "ami-408c7f28"
    instance_type = "t2.micro"
}