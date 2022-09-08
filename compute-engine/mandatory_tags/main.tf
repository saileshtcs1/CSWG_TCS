resource "google_compute_instance" "default" {
  name         = "default-service-account-test"
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
  service_account {
     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
     email  = "sailesh.beecha90.default.email"
     scopes = ["cloud-platform"]
   }

}