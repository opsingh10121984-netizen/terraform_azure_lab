variable "rg" {

  description = "Resource Group configurations"

  type = map(object({
    name     = string
    location = string
  }))
}
variable "vnet" {

  description = "Virtual Network configurations"

  type = map(object({
    name          = string
    rg_name       = string
    location      = string
    address_space = list(string)
  }))
}

variable "snet" {

  description = "Subnet configurations"

  type = map(object({
    name             = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}