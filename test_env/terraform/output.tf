output "gcp_cluster_endpoint" {
    value = "${google_container_cluster.gcp-kubernetes.endpoint}"
}

output "gcp_cluster_name" {
    value = "${google_container_cluster.gcp-kubernetes.name}"
}