variable "vnet" {

  description = "Azure Virtual Network configuration"

  type = map(object({
    rg_name       = string
    name          = string
    location      = string
    address_space = list(string)
  }))
}
