module "instances" {
  source = "./modules/instances"
}
module "storage" {
  source = "./modules/storage"
}

# terraform {
#   backend "gcs" {
#     bucket  = "qwiklabs-gcp-00-99e3cfd38f35"
#     prefix  = "terraform/state"
#   }
# }

# module "vpc" {
#     source  = "terraform-google-modules/network/google"
#     version = "2.5.0"

#     project_id   = "<project-id>"
#     network_name = "terraform-vpc"
#     routing_mode = "GLOBAL"

#     subnets = [
#         {
#             subnet_name           = "subnet-01"
#             subnet_ip             = "10.10.10.0/24"
#             subnet_region         = "us-central1"
#         },
#         {
#             subnet_name           = "subnet-02"
#             subnet_ip             = "10.10.20.0/24"
#             subnet_region         = "us-central1"
#         }
#         ]
# }

# resource "google_compute_firewall" "tf-firewall" {
#   name    = "tf-firewall"
#   network = "terraform-vpc"

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }
# }