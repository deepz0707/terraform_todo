resource "azurerm_resource_group" "ExampleRG" {
    name = "RG1"
    location = "East US"
}
resource "azurerm_storage_account" "ExampleStorageAccount" {
    name                     = "examplestorageacct"
    resource_group_name      = azurerm_resource_group.ExampleRG.name
    location                 = azurerm_resource_group.ExampleRG.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}