resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  metadata = {
    block-project-ssh-keys = true
  }

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


}