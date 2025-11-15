
resource "azurerm_storage_account" "datalake" {
    name                     = "dl${lower(var.project)}${var.environment}"
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = var.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    is_hns_enabled           = true
    tags                     = var.tags
}

# Contenedor para datos históricos
resource "azurerm_storage_data_lake_gen2_filesystem" "historicos" {
  name               = "historicos"
  storage_account_id = azurerm_storage_account.datalake.id
}


resource "azurerm_storage_data_lake_gen2_filesystem" "telemetria" {
  name               = "telemetria"
  storage_account_id = azurerm_storage_account.datalake.id
}

# Guardar access key en Key Vault para acceso seguro
resource "azurerm_key_vault_secret" "datalake_access_key" {
  name         = "datalake-access-key"
  value        = azurerm_storage_account.datalake.primary_access_key
  key_vault_id = azurerm_key_vault.kv.id

  depends_on = [azurerm_key_vault.kv]
}