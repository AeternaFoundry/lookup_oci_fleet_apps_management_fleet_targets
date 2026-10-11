variable "fleet_apps_management_fleet_targets_lookup" {
  description = <<EOT
Map of fleet_apps_management_fleet_targets_lookup, attributes below
Required:
    - fleet_id
Optional:
    - display_name
    - product
    - resource_display_name
    - resource_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id              = string
    display_name          = optional(string)
    product               = optional(string)
    resource_display_name = optional(string)
    resource_id           = optional(string)
    state                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

