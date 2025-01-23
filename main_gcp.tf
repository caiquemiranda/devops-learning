 "google" ">provider "google" {
  project = "seu-projeto-id"
  region  = "us-central1"
}

"google_compute_instance"">resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

 "instance_name" ">output "instance_name" {
  value = google_compute_instance.vm_instance.name
}
