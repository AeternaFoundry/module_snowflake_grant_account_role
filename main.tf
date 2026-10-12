resource "snowflake_grant_account_role" "grant_account_roles" {
  for_each = var.grant_account_roles

  role_name        = each.value.role_name
  parent_role_name = each.value.parent_role_name
  user_name        = each.value.user_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

