output "dynamodb_backups_lookup_backup_summaries" {
  description = "Map of backup_summaries values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.backup_summaries if v.backup_summaries != null && length(v.backup_summaries) > 0 }
}
output "dynamodb_backups_lookup_backup_type" {
  description = "Map of backup_type values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.backup_type if v.backup_type != null && length(v.backup_type) > 0 }
}
output "dynamodb_backups_lookup_region" {
  description = "Map of region values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dynamodb_backups_lookup_table_name" {
  description = "Map of table_name values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "dynamodb_backups_lookup_time_range_lower_bound" {
  description = "Map of time_range_lower_bound values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.time_range_lower_bound if v.time_range_lower_bound != null && length(v.time_range_lower_bound) > 0 }
}
output "dynamodb_backups_lookup_time_range_upper_bound" {
  description = "Map of time_range_upper_bound values across all dynamodb_backups_lookup, keyed the same as var.dynamodb_backups_lookup"
  value       = { for k, v in data.aws_dynamodb_backups.dynamodb_backups_lookup : k => v.time_range_upper_bound if v.time_range_upper_bound != null && length(v.time_range_upper_bound) > 0 }
}

