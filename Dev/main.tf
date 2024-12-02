terraform {
  backend "gcs" {
    bucket = "terraform-iac-devops9700"
    prefix = "terraform/Dev/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  region = "us-central1"
}


