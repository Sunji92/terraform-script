output "ec2_priv_ip" {
	value = aws_instance.terraform_test.private_ip
}

output "ec2_pub_ip" {
	value = aws_instance.terraform_test.public_ip
}

output "subnet_id" {
	value = aws_instance.terraform_test.subnet_id
}

output "key" {
	value = aws_instance.terraform_test.key_name
}

output "first_eni" {
	value = aws_instance.terraform_test.primary_network_interface_id
}

output "inst_id" {
	value = aws_instance.terraform_test.id
}

output "inst_arn" {
	value = aws_instance.terraform_test.arn
}
