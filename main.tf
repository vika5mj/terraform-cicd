terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  region = "us-central1"
}

resource "google_storage_bucket" "test_bucket" {
  name          = "my-test-bucket"
  location     = "us-central1"
  uniform_bucket_level_access = true
}