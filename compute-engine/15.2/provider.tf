terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
  cloud {
    organization = "saileshtcs1"

    workspaces {
      name = "saileshtcs1"
    }
  }
}

provider "google" {
  credentials = file("sailesh-terraform.json")

  project = "sample-357222"
  region  = "us-central1"
  zone    = "us-central1-c"
}