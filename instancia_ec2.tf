resource "aws_instance" "instancia_terraform" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    key_name = "par_claves_clase"
    associate_public_ip_address = true
    subnet_id = aws_subnet.subnet_clase_1.id
    vpc_security_group_ids = [ aws_security_group.sg_ssh.id ]

    tags = {

        Name = "instancia_clase"
    }
}

