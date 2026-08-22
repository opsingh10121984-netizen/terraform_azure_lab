rg = {
  rg1 = {
    name     = "prodrg"
    location = "centralindia"
  }
  rg2 = {
    name     = "prodrg_new"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    rg_name       = "prodrg"
    name          = "prodvnet"
    location      = "centralindia"
    address_space = ["10.40.0.0/16"]
  }
}
snet = {
  snet1 = {
    name             = "prodsubnet1"
    rg_name          = "prodrg"
    vnet_name        = "prodvnet"
    address_prefixes = ["10.40.1.0/24"]
  }
}