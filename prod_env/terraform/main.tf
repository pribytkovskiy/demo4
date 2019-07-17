provider "google" {
credentials = "${file("${var.service_account_key_path}")}"
project = "${var.project}"
region  = "${var.region}"
zone    = "${var.zone}"
}

resource "google_container_cluster" "gcp-kubernetes" {
    name               = "${var.cluster_name}"
    zone               = "${var.zone}"

    addons_config {
        network_policy_config {
        disabled = true
        }

        http_load_balancing {
        disabled = false
        }

        kubernetes_dashboard {
        disabled = false
        }
    }

    node_pool {
        name               = "prod-env-pool"
        initial_node_count = "${var.gcp_cluster_count}"

        management {
            auto_repair = true
        }

        autoscaling {
            min_node_count = "${var.autoscaling_min_node_count}"
            max_node_count = "${var.autoscaling_max_node_count}"
        }

        node_config {
            machine_type = "${var.machine_type}"
            preemptible  = false
            disk_size_gb = "${var.disk_size_gb}"
            disk_type    = "${var.disk_type}"
            oauth_scopes = [
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
            ]

            tags = ["prod"]
        }
    }
}
