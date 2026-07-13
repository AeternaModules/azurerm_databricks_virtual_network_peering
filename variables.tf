variable "databricks_virtual_network_peerings" {
  description = <<EOT
Map of databricks_virtual_network_peerings, attributes below
Required:
    - name
    - remote_address_space_prefixes
    - remote_virtual_network_id
    - resource_group_name
    - workspace_id
Optional:
    - allow_forwarded_traffic
    - allow_gateway_transit
    - allow_virtual_network_access
    - use_remote_gateways
EOT

  type = map(object({
    name                          = string
    remote_address_space_prefixes = list(string)
    remote_virtual_network_id     = string
    resource_group_name           = string
    workspace_id                  = string
    allow_forwarded_traffic       = optional(bool)
    allow_gateway_transit         = optional(bool)
    allow_virtual_network_access  = optional(bool)
    use_remote_gateways           = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.databricks_virtual_network_peerings : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.databricks_virtual_network_peerings : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.databricks_virtual_network_peerings : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

