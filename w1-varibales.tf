variable "aws_region" {
    description = "aws region where resources to be created."
    type = string
    default = "us-east-1"
}


variable "aws_keypair" {
    description = "This is the used to login the server"
    type = string
    default = "terraform"
}

variable "instancetype" {
    description = "ec2 instance type"
    type = string
    default = "t2.micro"
}
