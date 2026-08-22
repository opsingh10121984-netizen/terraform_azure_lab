variable "snet" {

  description = "Azure Subnet configuration"

  type = map(object({
    name             = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}