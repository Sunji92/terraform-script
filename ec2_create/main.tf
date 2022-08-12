module "sy-ec2" {
	source = "./mod_ec2"

	instance_ami = var.instance_ami
	key-name = var.key-name
	instance-type = var.instance-type
	vpc-id = var.vpc-id
	ec2-subnet = var.ec2-subnet

	vol-size = var.vol-size
	vol-type = var.vol-type
	ec2-name-tags = var.ec2-name-tags
	
}
