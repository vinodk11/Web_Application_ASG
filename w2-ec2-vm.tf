resource "aws_instance" "web_server" {
    ami = data.aws_ami.amazon.id
    instance_type = var.instancetype
    user_data = file("${path.module}/app-install.sh")
    key_name = var.aws_keypair
    vpc_security_group_ids = [ aws_security_group.ssh.id, aws_security_group.web.id ]
    tags = {
        "Name" = "web-server"
    }
  
}

