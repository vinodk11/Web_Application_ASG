output "ubuntu_ami_id" {
    description = "ubuntu ami id output"
    value = data.aws_ami.ubuntu
  
}

output "ec2_instance_ip" {
    description = "this gets the ip of instance"
    value = aws_instance.web_server.public_ip
  
}