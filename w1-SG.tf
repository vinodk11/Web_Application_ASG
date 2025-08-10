resource "aws_security_group" "ssh" {
    name = "ssh-sg"
    description = "allows trafic from port 22"
    ingress {
        description = "allow prot 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "allow all ip and ports"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "test-shh"
    }
}


# Create Security Group - Web Traffic
resource "aws_security_group" "web" {
    name = "web-sg"
    description = "allows trafic from port 80"
    ingress {
        description =  "Allow port 80"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
       description = "Allow all ip and ports outbound"
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/24"]
    }
    tags = {
        Name = "test-web"
    } 

  
}