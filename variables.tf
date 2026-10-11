variable "database_backup_destinations_lookup" {
  description = <<EOT
Map of database_backup_destinations_lookup, attributes below
Required:
    - compartment_id
Optional:
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    type           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

