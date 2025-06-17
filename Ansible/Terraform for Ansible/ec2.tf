#key Pair

resource aws_key_pair my_key{
    key_name = "terra-key-ec2"
    public_key = file("terra-key-ec2.pub")
}

#VPC & Security group

resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "mysg" {
    name = "automate-sg"
    description = "this will add a auto generated SG"
    vpc_id = aws_default_vpc.default.id


    #inbound rules

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #outbound rules

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}

#ec2 instance

resource "aws_instance" "myinstance" {
    for_each = tomap({
        Ansible-Master = "ami-0f918f7e67a3323f0"
        Ansible-Worker1 = "ami-0f918f7e67a3323f0"
        Ansible-Worker2 = "ami-0b09627181c8d5778"
    })

    depends_on = [ aws_security_group.mysg,aws_key_pair.my_key ]

    key_name = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.mysg.name]
    instance_type = "t2.micro"
    ami = each.value
    root_block_device {
      volume_size = 8
      volume_type = "gp3"
    }
    tags= {
        Name= each.key
    }

}