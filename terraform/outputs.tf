output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}
output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnets"
  value       = module.vpc.public_subnets
}