output "databricks_virtual_network_peerings_address_space_prefixes" {
  description = "Map of address_space_prefixes values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.address_space_prefixes }
}
output "databricks_virtual_network_peerings_allow_forwarded_traffic" {
  description = "Map of allow_forwarded_traffic values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_forwarded_traffic }
}
output "databricks_virtual_network_peerings_allow_gateway_transit" {
  description = "Map of allow_gateway_transit values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_gateway_transit }
}
output "databricks_virtual_network_peerings_allow_virtual_network_access" {
  description = "Map of allow_virtual_network_access values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.allow_virtual_network_access }
}
output "databricks_virtual_network_peerings_name" {
  description = "Map of name values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.name }
}
output "databricks_virtual_network_peerings_remote_address_space_prefixes" {
  description = "Map of remote_address_space_prefixes values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.remote_address_space_prefixes }
}
output "databricks_virtual_network_peerings_remote_virtual_network_id" {
  description = "Map of remote_virtual_network_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.remote_virtual_network_id }
}
output "databricks_virtual_network_peerings_resource_group_name" {
  description = "Map of resource_group_name values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.resource_group_name }
}
output "databricks_virtual_network_peerings_use_remote_gateways" {
  description = "Map of use_remote_gateways values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.use_remote_gateways }
}
output "databricks_virtual_network_peerings_virtual_network_id" {
  description = "Map of virtual_network_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.virtual_network_id }
}
output "databricks_virtual_network_peerings_workspace_id" {
  description = "Map of workspace_id values across all databricks_virtual_network_peerings, keyed the same as var.databricks_virtual_network_peerings"
  value       = { for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : k => v.workspace_id }
}

