output "rke_node_ips" {
  value = [for node in google_compute_instance.rke_node : node.network_interface[0].access_config[0].nat_ip]
}
