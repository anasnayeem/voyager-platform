variable "project_id" {
  description = "voyager-v1-460802"
  type        = string
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "vm_image" {
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}
