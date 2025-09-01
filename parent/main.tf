# Resource Group
module "pprg" {
    source = "../child/resource_group"
    rg_location = "Central India"
    rg_name = "azpprg"
}
# Storage Account
module "straccpp" {
    depends_on = [ module.pprg ]
    source = "../child/storage_account"
    str_acc_name = "azppstracc"
    rg_location = "Central India"
    rg_name = "azpprg"
}
# Virtual Network
module "vnetpp" {
    depends_on = [ module.pprg ]
    source = "../child/vnet"
    vnet_name = "azppvnet"
    add_spc = ["10.0.0.0/16"]
    rg_location = "Central India"
    rg_name = "azpprg"
}
# Subnet
module "sbntpp" {
    depends_on = [ module.vnetpp ]
    source = "../child/subnet"
    sbnt_name = "azppsbnt"
    add_pre = ["10.0.1.0/24"]
    vnet_name = "azppvnet"
    rg_name = "azpprg"
}