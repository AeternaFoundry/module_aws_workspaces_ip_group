output "workspaces_ip_groups_id" {
  description = "Map of id values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspaces_ip_groups_description" {
  description = "Map of description values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workspaces_ip_groups_name" {
  description = "Map of name values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workspaces_ip_groups_region" {
  description = "Map of region values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "workspaces_ip_groups_rules" {
  description = "Map of rules values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "workspaces_ip_groups_tags" {
  description = "Map of tags values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workspaces_ip_groups_tags_all" {
  description = "Map of tags_all values across all workspaces_ip_groups, keyed the same as var.workspaces_ip_groups"
  value       = { for k, v in aws_workspaces_ip_group.workspaces_ip_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

