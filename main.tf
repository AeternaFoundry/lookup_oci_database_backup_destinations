data "oci_database_backup_destinations" "database_backup_destinations_lookup" {
  for_each = var.database_backup_destinations_lookup

  compartment_id = each.value.compartment_id
  type           = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

