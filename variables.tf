variable "dynamodb_backups_lookup" {
  description = <<EOT
Map of dynamodb_backups_lookup, attributes below
Optional:
    - backup_type
    - region
    - table_name
    - time_range_lower_bound
    - time_range_upper_bound
EOT

  type = map(object({
    backup_type            = optional(string)
    region                 = optional(string)
    table_name             = optional(string)
    time_range_lower_bound = optional(string)
    time_range_upper_bound = optional(string)
  }))
}

