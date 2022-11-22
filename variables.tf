variable "AWS_ACCESS_KEY_ID" {
    type = string
    description = "AWS ACCESS KEY"
}
variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    description = "AWS SECRET KEY"
}
variable "aws_region" {
    type = string
    description = "AWS REGION"
    default = "us-west-2"
}
variable "enable_dns_hostnames" {
    type = bool
    description = "AWS DNS HOST NAME"
    default = true
}
variable "subnets_cidr_block" {
    type = list(string)
    description = "SUBNETS CIDR BLOCK"
    default = ["10.0.0.0/24","10.0.1.0/24"]  
}
variable "map_public_ip_on_launch" {
    type = bool
    description = "SHOW PUBLIC IP ON LAUNCH"
    default = true
}
variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}
variable "instance_type" {
    type = string
    description = "AWS INSTANCE TYPE"
    default = "t2.micro"
}
variable "company" {
    type = string
    description = "company name for tagging"
    default = "CG"
}
variable "project" {
    type = string
    description = "project name for resouce tagging"
}
variable "billing_code" {
    type = string
    description = "billing code for resource tagging"
}
