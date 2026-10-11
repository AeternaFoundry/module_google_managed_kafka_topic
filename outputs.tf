output "managed_kafka_topics_id" {
  description = "Map of id values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no id are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_topics_cluster" {
  description = "Map of cluster values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no cluster are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "managed_kafka_topics_configs" {
  description = "Map of configs values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no configs are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.configs if v.configs != null && length(v.configs) > 0 }
}
output "managed_kafka_topics_deletion_policy" {
  description = "Map of deletion_policy values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no deletion_policy are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "managed_kafka_topics_location" {
  description = "Map of location values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no location are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_kafka_topics_name" {
  description = "Map of name values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no name are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_topics_partition_count" {
  description = "Map of partition_count values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no partition_count are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.partition_count if v.partition_count != null }
}
output "managed_kafka_topics_project" {
  description = "Map of project values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no project are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.project if v.project != null && length(v.project) > 0 }
}
output "managed_kafka_topics_replication_factor" {
  description = "Map of replication_factor values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no replication_factor are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.replication_factor if v.replication_factor != null }
}
output "managed_kafka_topics_topic_id" {
  description = "Map of topic_id values across all managed_kafka_topics, keyed the same as var.managed_kafka_topics except keys with no topic_id are omitted"
  value       = { for k, v in google_managed_kafka_topic.managed_kafka_topics : k => v.topic_id if v.topic_id != null && length(v.topic_id) > 0 }
}

