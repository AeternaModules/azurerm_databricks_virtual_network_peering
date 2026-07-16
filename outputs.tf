output "databricks_virtual_network_peerings_id" {
  description = "Map of id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "databricks_virtual_network_peerings_address_space_prefixes" {
  description = "Map of address_space_prefixes values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.address_space_prefixes if v.address_space_prefixes != null && length(v.address_space_prefixes) > 0 }
}
output "databricks_virtual_network_peerings_allow_forwarded_traffic" {
  description = "Map of allow_forwarded_traffic values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_forwarded_traffic if v.allow_forwarded_traffic != null }
}
output "databricks_virtual_network_peerings_allow_gateway_transit" {
  description = "Map of allow_gateway_transit values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_gateway_transit if v.allow_gateway_transit != null }
}
output "databricks_virtual_network_peerings_allow_virtual_network_access" {
  description = "Map of allow_virtual_network_access values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_virtual_network_access if v.allow_virtual_network_access != null }
}
output "databricks_virtual_network_peerings_name" {
  description = "Map of name values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "databricks_virtual_network_peerings_remote_address_space_prefixes" {
  description = "Map of remote_address_space_prefixes values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.remote_address_space_prefixes if v.remote_address_space_prefixes != null && length(v.remote_address_space_prefixes) > 0 }
}
output "databricks_virtual_network_peerings_remote_virtual_network_id" {
  description = "Map of remote_virtual_network_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.remote_virtual_network_id if v.remote_virtual_network_id != null && length(v.remote_virtual_network_id) > 0 }
}
output "databricks_virtual_network_peerings_resource_group_name" {
  description = "Map of resource_group_name values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "databricks_virtual_network_peerings_use_remote_gateways" {
  description = "Map of use_remote_gateways values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.use_remote_gateways if v.use_remote_gateways != null }
}
output "databricks_virtual_network_peerings_virtual_network_id" {
  description = "Map of virtual_network_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.virtual_network_id if v.virtual_network_id != null && length(v.virtual_network_id) > 0 }
}
output "databricks_virtual_network_peerings_workspace_id" {
  description = "Map of workspace_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

