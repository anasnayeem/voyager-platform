provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "rke_node" {
  name         = "rke-node-1"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vm_image
      size  = 30
    }
  }

  network_interface {
    network = "default"
    access_config {
      // This gives the VM a public IP
    }
  }

  metadata = {
    ssh-keys = "nayeem_au96:${file("~/.ssh/id_rsa.pub")}"
  }
}
