output "rke_node_ip" {
  value = google_compute_instance.rke_node.network_interface[0].access_config[0].nat_ip
}
