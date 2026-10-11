output "authentication_executions_id" {
  description = "Map of id values across all authentication_executions, keyed the same as var.authentication_executions except keys with no id are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_executions_authenticator" {
  description = "Map of authenticator values across all authentication_executions, keyed the same as var.authentication_executions except keys with no authenticator are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.authenticator if v.authenticator != null && length(v.authenticator) > 0 }
}
output "authentication_executions_parent_flow_alias" {
  description = "Map of parent_flow_alias values across all authentication_executions, keyed the same as var.authentication_executions except keys with no parent_flow_alias are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.parent_flow_alias if v.parent_flow_alias != null && length(v.parent_flow_alias) > 0 }
}
output "authentication_executions_priority" {
  description = "Map of priority values across all authentication_executions, keyed the same as var.authentication_executions except keys with no priority are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.priority if v.priority != null }
}
output "authentication_executions_realm_id" {
  description = "Map of realm_id values across all authentication_executions, keyed the same as var.authentication_executions except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "authentication_executions_requirement" {
  description = "Map of requirement values across all authentication_executions, keyed the same as var.authentication_executions except keys with no requirement are omitted"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.requirement if v.requirement != null && length(v.requirement) > 0 }
}

