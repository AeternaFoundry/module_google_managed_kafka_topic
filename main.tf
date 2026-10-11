resource "google_managed_kafka_topic" "managed_kafka_topics" {
  for_each = var.managed_kafka_topics

  cluster            = each.value.cluster
  location           = each.value.location
  replication_factor = each.value.replication_factor
  topic_id           = each.value.topic_id
  configs            = each.value.configs
  deletion_policy    = each.value.deletion_policy
  partition_count    = each.value.partition_count
  project            = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

