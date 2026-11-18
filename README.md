# Terraform GCP Modules

Reusable Terraform modules for provisioning and managing Google Cloud Platform (GCP) infrastructure.

## Project Overview

This repository contains reusable Terraform modules designed to simplify GCP infrastructure management.

## Modules Available

| Module | Description |
|---|---|
| VPC | Creates custom VPC networks |
| Subnet | Creates VPC subnets |
| Compute VM | Creates Compute Engine virtual machines |
| Firewall | Configures firewall rules |
| IAM | Creates service accounts and assigns IAM roles |
| Storage | Creates Google Cloud Storage buckets |
| GKE | Creates Google Kubernetes Engine clusters and node pools |
| Cloud SQL | Creates Cloud SQL database instances |
| Cloud Function | Deploys Cloud Functions from source archives |

## Repository Structure

```text
terraform-mod-rev/
├── modules/
│   ├── vpc/
│   ├── subnet/
│   ├── compute-vm/
│   ├── firewall/
│   ├── iam/
│   ├── storage/
│   ├── gke/
│   ├── cloud-sql/
│   └── cloud-function/
├── versions.tf
├── .terraform.lock.hcl
├── .gitignore
└── README.md
```

Each module contains:
- `main.tf` - Infrastructure resources.
- `variables.tf` - Input variables.
- `outputs.tf` - Output values.

## Prerequisites

- Terraform >= 1.5.0
- Google Cloud Platform account
- Google Cloud SDK
- Appropriate GCP permissions

## Provider

This repository uses the official HashiCorp Google provider:

```hcl
source  = "hashicorp/google"
version = "~> 7.0"
```

## Using a Module

Modules can be consumed from another Terraform repository using Git sources.

Example:

```hcl
module "vpc" {
  source = "git::https://github.com/shivamrajsr07/terraform-mod-rev.git//modules/vpc?ref=main"

  network_name = "my-custom-vpc"
}
```

For production use, prefer a versioned Git tag instead of the `main` branch.

## Terraform Commands

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

Review the execution plan before applying infrastructure changes.

## Security

- Avoid committing credentials and service account keys.
- Use IAM roles with least privilege.
- Keep storage buckets private.
- Restrict SSH access through appropriate firewall rules.
- Protect Terraform state files.

## Cost Awareness

Some GCP resources, including GKE clusters, Compute Engine VMs, Cloud SQL instances, and Cloud Functions, may incur charges.

Review resource costs before deployment and destroy temporary resources when they are no longer required.

## Author

**Shivam Raj**

GitHub: https://github.com/shivamrajsr07

---

**License:** Add a suitable license before permitting others to reuse this repository.