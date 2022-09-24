resource "aws_instance" "Ec2Instance" {
    ami = var.image_id
    instance_type = var.instance-type
    vpc_security_group_ids = [aws_security_group.SG.id]
    user_data = file("install.sh")
    tags = {
    Name = "Roba-Ec2"
    }
}

resource "aws_security_group" "SG" {
  name = "sg"

  #Incoming traffic
  ingress {
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"] #Public access - anywhere
  }
  
  ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["93.112.138.171/32"] #access only from your own IP
  }
  
  egress {
  from_port = 0
  protocol = "-1"
  to_port = 0
  cidr_blocks = ["0.0.0.0/0"]
  }
}
