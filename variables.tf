variable "name" {
  type        = string
  description = "The replication group identifier. This parameter is stored as a lowercase string."
}

variable "replicas_per_node_group" {
  type        = string
  description = "Specify the number of replica nodes in each node group. Valid values are 0 to 5. Changing this number will force a new resource. Optional. Triggers cluster mode on."
  default     = 0
}

variable "num_node_groups" {
  type        = string
  description = "Specify the number of node groups (shards) for this Redis replication group. Changing this number will trigger an online resizing operation before other settings modifications. Optional. Triggers cluster mode on."
  default     = 0
}

variable "node_type" {
  type        = string
  description = "The compute and memory capacity of the nodes in the node group."
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of VPC Subnet IDs for the cache subnet group."
}

variable "vpc_id" {
  type        = string
  description = "VPC Id to associate with Redis ElastiCache."
}

variable "engine_version" {
  default     = "5.0.0"
  type        = string
  description = "The version number of the cache engine to be used for the cache clusters in this replication group."
}

variable "security_group_id" {
  type        = string
  description = "Security group the redis will use"
}

variable "port" {
  default     = 6379
  type        = string
  description = "The port number on which each of the cache nodes will accept connections."
}

variable "maintenance_window" {
  default     = ""
  type        = string
  description = "Specifies the weekly time range for when maintenance on the cache cluster is performed."
}

variable "snapshot_window" {
  default     = ""
  type        = string
  description = "The daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster."
}

variable "snapshot_retention_limit" {
  default     = "30"
  type        = string
  description = "The number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them."
}

variable "automatic_failover_enabled" {
  default     = true
  type        = string
  description = "Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
}

variable "at_rest_encryption_enabled" {
  default     = true
  type        = string
  description = "Whether to enable encryption at rest."
}

variable "transit_encryption_enabled" {
  default     = true
  type        = string
  description = "Whether to enable encryption in transit."
}

variable "apply_immediately" {
  default     = false
  type        = string
  description = "Specifies whether any modifications are applied immediately, or during the next maintenance window."
}

variable "auto_minor_version_upgrade" {
  default     = true
  type        = string
  description = "Specifies whether a minor engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window."
}

variable "family" {
  default     = "redis5.0"
  type        = string
  description = "The family of the ElastiCache parameter group."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the all resources."
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "A mapping of tags to assign to all resources."
}

variable "multi_az_enabled" {
  default = true
}