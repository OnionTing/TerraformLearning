# Config the Terraform Enterprise Provider
provider "tfe" {
    hostname="${var.hostname}"
    version = "~> 0.15.0"
}

# Create an organization
resource "tfe_organization" "org"{
    name = "Dev-org"
    email = "admin_dev@company.com"
}

# Create a workspace
resource 