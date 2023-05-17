variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "jenkins-server"
}

variable "instance_type" {
  type        = string
  description = "instace type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "ec2 key-pair"
  type        = string
  default     = "Jenkins-server"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "kubernetes-vpc"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}