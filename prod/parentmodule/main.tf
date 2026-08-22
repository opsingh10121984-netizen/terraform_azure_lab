module "rgmodule" {
  source = "../childmodule/azurerm_resource_group"
  rg     = var.rg

}
module "vnet" {
  depends_on = [module.rgmodule]
  source     = "../childmodule/azurerm_vnet"
  vnet       = var.vnet
}

module "snet" {
  depends_on = [module.vnet]
  source     = "../childmodule/azurerm_subnet"
  snet       = var.snet
}