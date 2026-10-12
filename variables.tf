variable "grant_account_roles" {
  description = <<EOT
Map of grant_account_roles, attributes below
Required:
    - role_name
Optional:
    - parent_role_name
    - user_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    role_name        = string
    parent_role_name = optional(string)
    user_name        = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

