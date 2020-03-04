output "app_external_ip" {
  value       = module.app.app_external_ip
  description = "External IP for Reddit App"
}

output "db_internal_ip" {
  value = module.db.db_internal_ip
}

output "db_external_ip" {
  value       = module.db.db_external_ip
  description = "External IP for DB Instance"
}
