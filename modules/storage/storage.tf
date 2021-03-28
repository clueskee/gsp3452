provider "google" {
  project     = "<project-id>"
  region      = "us-central-1"
}

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-00-99e3cfd38f35"
  location    = "US"
}