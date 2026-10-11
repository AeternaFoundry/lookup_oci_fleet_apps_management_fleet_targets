data "oci_fleet_apps_management_fleet_targets" "fleet_apps_management_fleet_targets_lookup" {
  for_each = var.fleet_apps_management_fleet_targets_lookup

  fleet_id              = each.value.fleet_id
  display_name          = each.value.display_name
  product               = each.value.product
  resource_display_name = each.value.resource_display_name
  resource_id           = each.value.resource_id
  state                 = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

