terraform {
  required_version = ">= 1.3.0"

  required_providers {
    pingone = {
      source  = "pingidentity/pingone"
      version = "~> 0.18.0"
    }
  }
}

provider "pingone" {
  client_id       = var.pingone_client_id
  client_secret   = var.pingone_client_secret
  environment_id  = var.pingone_environment_id
}

provider "davinci" {
  client_id       = var.davinci_client_id
  client_secret   = var.davinci_client_secret
  environment_id  = var.davinci_environment_id
  source  = "hashicorp/davinci" # or the correct registry if published elsewhere
  version = "~> 1.0.0"          # update this to match the required version
}

# Import and Deploy DaVinci Flow

resource "davinci_flow" "my_flow" {
  environment_id = var.davinci_environment_id

  # Terraform loads the exported DaVinci flow JSON
  flow_json      = file("${path.module}/flows/my-flow.json")

  # Optional but useful if JSON doesn't include name
  name           = "My Automated Flow"

  # Deploys the flow after importing
  deploy         = true

}
