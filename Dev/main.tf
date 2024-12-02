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

resource "google_storage_bucket" "test_bucket1" {
  project   = "devops970012"
  name          = "my-test-bucketdevops9700-1"
  location     = "us-central1"
  uniform_bucket_level_access = true
}
