terraform {

    required_version = ">= 0.12"
    
    required_providers {
      proxmox = {
        source = "telmate/proxmox"
      }
    }
}

variable proxmox_api_url {
  type        = string
  default     = ""
  description = "description"
}

variable proxmox_api_token_id {
  type        = string
  default     = ""
  description = "description"
  sensitive = true
}

variable proxmox_api_token_secret {
  type        = string
  default     = ""
  description = "description"
  sensitive = true
}

provider "proxmox" {

    pm_api_url = var.proxmox_api_url
    pm_api_token_id = var.proxmox_api_token_id
    pm_api_token_secret = var.proxmox_api_token_secret

    # Because of self signed cert
    pm_tls_insecure = true
}