variable "global_init_scripts" {
  description = <<EOT
Map of global_init_scripts, attributes below
Required:
    - name
Optional:
    - content_base64
    - enabled
    - md5
    - position
    - source
    - provider_config (block):
        - workspace_id (optional)
    - timeouts (block):
EOT

  type = map(object({
    name           = string
    content_base64 = optional(string)
    enabled        = optional(bool)
    md5            = optional(string)
    position       = optional(number)
    source         = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    timeouts = optional(object({
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.global_init_scripts : (
        can(regex("^[-a-zA-Z0-9_. ]{1,100}$", v.name))
      )
    ])
    error_message = "Name should match regex!"
  }
  validation {
    condition = alltrue([
      for k, v in var.global_init_scripts : (
        v.position == null || (v.position >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
}

