# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Web Server

output "ec2_webserver_instance_ids" {
  description = "List of IDs of instances"
  value       = module.web-server-instance.id
}

output "ec2_webserver_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.web-server-instance.public_ip
}