###AWS INSTANCE########
resource "aws_instance" "nginx1" {
    ami = data.aws_ssm_parameter.ami.value
    instance_type = var.instance_type
    subnet_id = aws_subnet.subnet1.id
    vpc_security_group_ids = [aws_security_group.nginx_sg.id]
    user_data = <<EOF
        #! /bin/bash
        sudo service docker start
        sudo docker run vishnu981824/app1
	EOF
        tags = local.common_tags 
  
}
resource "aws_instance" "nginx2" {
    ami = data.aws_ssm_parameter.ami.value
    instance_type = var.instance_type
    subnet_id = aws_subnet.subnet2.id
    vpc_security_group_ids = [aws_security_group.nginx_sg.id]

tags = local.common_tags 
  
}
