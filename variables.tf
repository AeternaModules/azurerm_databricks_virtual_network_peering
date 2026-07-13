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
  # --- Unconfirmed validation candidates, derived from azurerm_databricks_virtual_network_peering's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.DatabricksVirtualNetworkPeeringName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: remote_address_space_prefixes[*]
  #   source:    [from validate.CIDRIsIPv4OrIPv6] !ok
  # path: remote_address_space_prefixes[*]
  #   source:    [from validate.CIDRIsIPv4OrIPv6] err != nil
  # path: remote_virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: remote_virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
}

