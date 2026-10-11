output "database_backup_destinations_lookup_id" {
  description = "Map of id values across all database_backup_destinations_lookup, keyed the same as var.database_backup_destinations_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_backup_destinations.database_backup_destinations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_backup_destinations_lookup_backup_destinations" {
  description = "Map of backup_destinations values across all database_backup_destinations_lookup, keyed the same as var.database_backup_destinations_lookup except keys with no backup_destinations are omitted"
  value       = { for k, v in data.oci_database_backup_destinations.database_backup_destinations_lookup : k => v.backup_destinations if v.backup_destinations != null && length(v.backup_destinations) > 0 }
}
output "database_backup_destinations_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_backup_destinations_lookup, keyed the same as var.database_backup_destinations_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_backup_destinations.database_backup_destinations_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_backup_destinations_lookup_filter" {
  description = "Map of filter values across all database_backup_destinations_lookup, keyed the same as var.database_backup_destinations_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_backup_destinations.database_backup_destinations_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_backup_destinations_lookup_type" {
  description = "Map of type values across all database_backup_destinations_lookup, keyed the same as var.database_backup_destinations_lookup except keys with no type are omitted"
  value       = { for k, v in data.oci_database_backup_destinations.database_backup_destinations_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

