output "instance_connection_name" {
  description = "The connection name of the instance"
  value       = module.sql_db.instance_connection_name
}

output "instance_name" {
  description = "The name of the database instance"
  value       = module.sql_db.instance_name
}

output "instance_public_ip_address" {
  description = "The public IP address of the instance"
  value       = module.sql_db.instance_public_ip_address
}

output "instance_private_ip_address" {
  description = "The private IP address of the instance"
  value       = module.sql_db.instance_private_ip_address
} 