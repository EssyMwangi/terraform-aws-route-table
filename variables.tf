# Common Variables
variable "region" {
    description = "default region for resources"
    type = string  
}

variable "tags" {
    description = "Tags for resources"
    type = map(string)
}

variable "project" {
    description = "Project Name"
    type = string
}

#RT Variables
variable "vpc_id" {
    description = "The ID of the VPC"
    type = string
}

variable "igw_id" {
    description = "The ID of the IGW"
    type = string
}

variable "nat_id" {
    description = "The ID of the NAT Gateway"
    type = string
}

variable "private_attach_subnets_cidrs" {
    description = "CIDR Blocks to use for Private Attachment subnets"
    type = list(string)
    default = []
}

variable "public_attach_subnets_cidrs" {
    description = "CIDR Blocks to use for public Attachment subnets"
    type = list(string)
    default = []
}

variable "private_attach_subnets_id" {
    description = "private subnets to attach"
    type = list(string)
    default = []
}

variable "public_attach_subnets_id" {
    description = "public subnets to attach"
    type = list(string)
    default = []
}

variable "rtb_cidr" {
    description = "route table cidr"
    type = string
    default = ""
}

#DB Route Table Variables
variable "private_db_attach_subnets_id" {
    description = "private subnets to attach"
    type = list(string)
    default = []
}



