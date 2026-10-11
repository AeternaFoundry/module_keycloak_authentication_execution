resource "keycloak_authentication_execution" "authentication_executions" {
  for_each = var.authentication_executions

  authenticator     = each.value.authenticator
  parent_flow_alias = each.value.parent_flow_alias
  realm_id          = each.value.realm_id
  priority          = each.value.priority
  requirement       = each.value.requirement
}

