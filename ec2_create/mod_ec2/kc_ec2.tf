## ec2 create
resource "aws_instance" "terraform_test" {
    ami = var.instance_ami # ap-northeast-2
    instance_type = var.instance-type
	  vpc_security_group_ids = ["${aws_security_group.terraform-sg.id}"]
    subnet_id = var.ec2-subnet
	  key_name = var.key-name
    associate_public_ip_address = true
    #user_data = base64encode(
    #    templatefile("./userdata.tpl", 
    #    {
    #      ## shell file env
    #    }
    #  )
    #)
    user_data = "${file("./mod_ec2/userdata.tpl")}"

	root_block_device {
		delete_on_termination = true
		volume_size = var.vol-size
		volume_type = var.vol-type
	}

	tags = {
		Name = var.ec2-name-tags
	}
}
