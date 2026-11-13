output "authentication_executions_id" {
  description = "Map of id values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.id }
}
output "authentication_executions_authenticator" {
  description = "Map of authenticator values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.authenticator }
}
output "authentication_executions_parent_flow_alias" {
  description = "Map of parent_flow_alias values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.parent_flow_alias }
}
output "authentication_executions_priority" {
  description = "Map of priority values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.priority }
}
output "authentication_executions_realm_id" {
  description = "Map of realm_id values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.realm_id }
}
output "authentication_executions_requirement" {
  description = "Map of requirement values across all authentication_executions, keyed the same as var.authentication_executions"
  value       = { for k, v in keycloak_authentication_execution.authentication_executions : k => v.requirement }
}

