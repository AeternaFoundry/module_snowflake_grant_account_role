output "grant_account_roles_id" {
  description = "Map of id values across all grant_account_roles, keyed the same as var.grant_account_roles except keys with no id are omitted"
  value       = { for k, v in snowflake_grant_account_role.grant_account_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grant_account_roles_parent_role_name" {
  description = "Map of parent_role_name values across all grant_account_roles, keyed the same as var.grant_account_roles except keys with no parent_role_name are omitted"
  value       = { for k, v in snowflake_grant_account_role.grant_account_roles : k => v.parent_role_name if v.parent_role_name != null && length(v.parent_role_name) > 0 }
}
output "grant_account_roles_role_name" {
  description = "Map of role_name values across all grant_account_roles, keyed the same as var.grant_account_roles except keys with no role_name are omitted"
  value       = { for k, v in snowflake_grant_account_role.grant_account_roles : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}
output "grant_account_roles_user_name" {
  description = "Map of user_name values across all grant_account_roles, keyed the same as var.grant_account_roles except keys with no user_name are omitted"
  value       = { for k, v in snowflake_grant_account_role.grant_account_roles : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

