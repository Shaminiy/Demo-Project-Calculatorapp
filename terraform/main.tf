provider "google" {
  project = "lateral-faculty-467911-n3"
  zone  = "us-central1-a"
}

resource "google_container_cluster" "harness_gke_cluster" {
  name     = "harness-gke-demo"
  location = "us-central1-a"
  
  remove_default_node_pool = true
  initial_node_count       = 1

  node_pool {
    name       = "default-pool"
    node_count = 1
    node_config {
      machine_type = "e2-medium"
      disk_size_gb = 20
    }
  }
}

output "cluster_name" {
  value = google_container_cluster.gke_cluster.name
}

output "cluster_endpoint" {
  value = google_container_cluster.gke_cluster.endpoint
}