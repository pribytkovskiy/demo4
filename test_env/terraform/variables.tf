variable "service_account_key_path" {
    description = "service_account_key"
    default     = "/home/g990fxagd65supp/jenkins/logs/eighth-breaker-245614-9439abbfaef0.json"
}

variable "project" {
    description = "project"
    default     = "eighth-breaker-245614"
}

variable "region" {
    description = "region"
    default     = "europe-west3"
}

variable "zone" {
    description = "zone"
    default     = "europe-west3-a"
}

variable "gcp_cluster_count" {
    description = "gcp_cluster_count"
    default     = 1
}

variable "cluster_name" {
    description = "cluster_name"
    default     = "kube-test-env"
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 1
}

variable "disk_size_gb" {
  default = 10
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-2"
}