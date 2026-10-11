output "global_init_scripts_id" {
  description = "Map of id values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no id are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "global_init_scripts_content_base64" {
  description = "Map of content_base64 values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no content_base64 are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.content_base64 if v.content_base64 != null && length(v.content_base64) > 0 }
}
output "global_init_scripts_enabled" {
  description = "Map of enabled values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no enabled are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.enabled if v.enabled != null }
}
output "global_init_scripts_md5" {
  description = "Map of md5 values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no md5 are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.md5 if v.md5 != null && length(v.md5) > 0 }
}
output "global_init_scripts_name" {
  description = "Map of name values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no name are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "global_init_scripts_position" {
  description = "Map of position values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no position are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.position if v.position != null }
}
output "global_init_scripts_provider_config" {
  description = "Map of provider_config values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no provider_config are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "global_init_scripts_source" {
  description = "Map of source values across all global_init_scripts, keyed the same as var.global_init_scripts except keys with no source are omitted"
  value       = { for k, v in databricks_global_init_script.global_init_scripts : k => v.source if v.source != null && length(v.source) > 0 }
}

