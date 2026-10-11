variable "managed_kafka_topics" {
  description = <<EOT
Map of managed_kafka_topics, attributes below
Required:
    - cluster
    - location
    - replication_factor
    - topic_id
Optional:
    - configs
    - deletion_policy
    - partition_count
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster            = string
    location           = string
    replication_factor = number
    topic_id           = string
    configs            = optional(map(string))
    deletion_policy    = optional(string)
    partition_count    = optional(number)
    project            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

