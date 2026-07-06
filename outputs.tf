output "databricks_virtual_network_peerings" {
  description = "All databricks_virtual_network_peering resources"
  value       = azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings
}
output "databricks_virtual_network_peerings_address_space_prefixes" {
  description = "List of address_space_prefixes values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.address_space_prefixes]
}
output "databricks_virtual_network_peerings_allow_forwarded_traffic" {
  description = "List of allow_forwarded_traffic values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.allow_forwarded_traffic]
}
output "databricks_virtual_network_peerings_allow_gateway_transit" {
  description = "List of allow_gateway_transit values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.allow_gateway_transit]
}
output "databricks_virtual_network_peerings_allow_virtual_network_access" {
  description = "List of allow_virtual_network_access values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.allow_virtual_network_access]
}
output "databricks_virtual_network_peerings_name" {
  description = "List of name values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.name]
}
output "databricks_virtual_network_peerings_remote_address_space_prefixes" {
  description = "List of remote_address_space_prefixes values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.remote_address_space_prefixes]
}
output "databricks_virtual_network_peerings_remote_virtual_network_id" {
  description = "List of remote_virtual_network_id values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.remote_virtual_network_id]
}
output "databricks_virtual_network_peerings_resource_group_name" {
  description = "List of resource_group_name values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.resource_group_name]
}
output "databricks_virtual_network_peerings_use_remote_gateways" {
  description = "List of use_remote_gateways values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.use_remote_gateways]
}
output "databricks_virtual_network_peerings_virtual_network_id" {
  description = "List of virtual_network_id values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.virtual_network_id]
}
output "databricks_virtual_network_peerings_workspace_id" {
  description = "List of workspace_id values across all databricks_virtual_network_peerings"
  value       = [for k, v in azurerm_databricks_virtual_network_peering.databricks_virtual_network_peerings : v.workspace_id]
}

