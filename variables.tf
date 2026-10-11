variable "authentication_executions" {
  description = <<EOT
Map of authentication_executions, attributes below
Required:
    - authenticator
    - parent_flow_alias
    - realm_id
Optional:
    - priority
    - requirement
EOT

  type = map(object({
    authenticator     = string
    parent_flow_alias = string
    realm_id          = string
    priority          = optional(number)
    requirement       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.authentication_executions : (
        v.requirement == null || (contains(["REQUIRED", "ALTERNATIVE", "OPTIONAL", "CONDITIONAL", "DISABLED"], v.requirement))
      )
    ])
    error_message = "must be one of: \"REQUIRED\", \"ALTERNATIVE\", \"OPTIONAL\", \"CONDITIONAL\", \"DISABLED\""
  }
}

