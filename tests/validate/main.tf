terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = "terraform-evaluation-lab"
  region  = "asia-south1"
}

module "vpc" {
  source       = "../../modules/vpc"
  network_name = "test-vpc"
}

module "subnet" {
  source            = "../../modules/subnet"
  project_id        = "terraform-evaluation-lab"
  subnet_name       = "test-subnet"
  region            = "asia-south1"
  ip_cidr_range     = "10.10.0.0/24"
  network_self_link = module.vpc.network_self_link
}

module "firewall" {
  source            = "../../modules/firewall"
  project_id        = "terraform-evaluation-lab"
  rule_name         = "test-firewall"
  network_self_link = module.vpc.network_self_link
  source_ranges     = ["35.235.240.0/20"]
  protocol          = "tcp"
  ports             = ["22"]
  target_tags       = ["allow-iap-ssh"]
}

module "iam" {
  source             = "../../modules/iam"
  project_id         = "terraform-evaluation-lab"
  service_account_id = "test-service-account"
  display_name       = "Test Service Account"
  roles              = []
}

module "storage" {
  source      = "../../modules/storage"
  project_id  = "terraform-evaluation-lab"
  bucket_name = "terraform-evaluation-test-bucket-unique-2026"
}

module "compute_vm" {
  source                = "../../modules/compute-vm"
  project_id            = "terraform-evaluation-lab"
  vm_name               = "test-vm"
  subnet_self_link      = module.subnet.subnet_self_link
  service_account_email = module.iam.service_account_email
  network_tags          = ["allow-iap-ssh"]
}

module "gke" {
  source                = "../../modules/gke"
  project_id            = "terraform-evaluation-lab"
  cluster_name          = "test-gke-cluster"
  network_self_link     = module.vpc.network_self_link
  subnet_self_link      = module.subnet.subnet_self_link
  service_account_email = module.iam.service_account_email
}

module "cloud_sql" {
  source        = "../../modules/cloud-sql"
  project_id    = "terraform-evaluation-lab"
  instance_name = "test-cloud-sql-instance"
}

module "cloud_function" {
  source              = "../../modules/cloud-function"
  project_id          = "terraform-evaluation-lab"
  function_name       = "test-cloud-function"
  entry_point         = "hello_http"
  source_bucket_name  = "terraform-evaluation-function-source-unique-2026"
  source_archive_path = "./function-source.zip"
}
