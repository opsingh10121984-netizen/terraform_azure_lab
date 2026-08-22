variable "rg" {
  description = "Configuration for Azure Resource Group"

  type = map(object({
    name     = string
    location = string
  }))
}