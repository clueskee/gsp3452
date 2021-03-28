provider "google" {
    version = "3.5.0"

  project = "<project-id>"
  region  = "us-central1"
  zone    = "us-central1-a"
}

# google_compute_instance.tf-instance-1:
resource "google_compute_instance" "tf-instance-1" {
    can_ip_forward          = false
    deletion_protection     = false
    enable_display          = false
    guest_accelerator       = []
    allow_stopping_for_update = true


    labels                  = {
        "goog-dm" = "qldm-26442050-2524cb247c6cb08a"
    }
    machine_type            = "n1-standard-2"
    metadata                = {}

    name                    = "tf-instance-1"
    project                 = "<project-id>"
 
    tags                    = []

    zone                    = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }


  network_interface {
    network = "default"
    # network = "terraform-vpc"
    # subnetwork = "subnet-01"

    access_config {
      // Ephemeral IP
    }
  }
    scheduling {
        automatic_restart   = true
        on_host_maintenance = "MIGRATE"
        preemptible         = false
    }

    service_account {
        email  = "qwiklabs-gcp-00-99e3cfd38f35@qwiklabs-gcp-00-99e3cfd38f35.iam.gserviceaccount.com"
        scopes = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }

    timeouts {}
}

# google_compute_instance.tf-instance-2:
resource "google_compute_instance" "tf-instance-2" {
    can_ip_forward          = false
    deletion_protection     = false
    enable_display          = false
    guest_accelerator       = []
    allow_stopping_for_update = true


    labels                  = {
        "goog-dm" = "qldm-26442050-2524cb247c6cb08a"
    }
    machine_type            = "n1-standard-2"
    metadata                = {}

    name                    = "tf-instance-2"
    project                 = "<project-id>"
 
    tags                    = []

    zone                    = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }


  network_interface {
    network = "default"
    # network = "terraform-vpc"
    # subnetwork = "subnet-02"

    access_config {
      // Ephemeral IP
    }
  }
    scheduling {
        automatic_restart   = true
        on_host_maintenance = "MIGRATE"
        preemptible         = false
    }

    service_account {
        email  = "qwiklabs-gcp-00-99e3cfd38f35@qwiklabs-gcp-00-99e3cfd38f35.iam.gserviceaccount.com"
        scopes = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }

    timeouts {}
}