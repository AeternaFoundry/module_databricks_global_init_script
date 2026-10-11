resource "databricks_global_init_script" "global_init_scripts" {
  for_each = var.global_init_scripts

  name           = each.value.name
  content_base64 = each.value.content_base64
  enabled        = each.value.enabled
  md5            = each.value.md5
  position       = each.value.position
  source         = each.value.source

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
    }
  }
}

