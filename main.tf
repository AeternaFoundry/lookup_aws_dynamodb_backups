data "aws_dynamodb_backups" "dynamodb_backups_lookup" {
  for_each = var.dynamodb_backups_lookup

  backup_type            = each.value.backup_type
  region                 = each.value.region
  table_name             = each.value.table_name
  time_range_lower_bound = each.value.time_range_lower_bound
  time_range_upper_bound = each.value.time_range_upper_bound
}

