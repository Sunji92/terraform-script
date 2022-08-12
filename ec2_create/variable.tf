## EC2 Instance Type
variable "instance-type" {
        type = string
        default = "t2.micro"
}

## EC2 Key-Pair
variable "key-name" {
       type = string 
	default = "test_eks_key"
}

variable "instance_ami" {
        type = string
}

## VPC ID
variable "vpc-id" {
        type = string
}

variable "ec2-subnet" {
        type = string
}

variable "vol-size" {
        type = number
}

variable "vol-type" {
        type = string
}

variable "ec2-name-tags" {
        type = string
}

