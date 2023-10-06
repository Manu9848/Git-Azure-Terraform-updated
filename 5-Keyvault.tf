data "azurerm_client_config" "current" {}

locals {
  str = join("-", [var.kv_name, random_integer.priority.result])
}

resource "azurerm_key_vault" "devopsb36kv77" {
  #name                        = ${var.kv_name}${random_integer.priority.result}
  name                        = local.str
  location                    = azurerm_resource_group.app10rg.location
  resource_group_name         = azurerm_resource_group.app10rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"
}

resource "azurerm_key_vault_access_policy" "devsecopsb36-sp-access" {
  key_vault_id = azurerm_key_vault.devopsb36kv77.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"
  ]
}

resource "azurerm_key_vault_access_policy" "trainer-access" {
  key_vault_id = azurerm_key_vault.devopsb36kv77.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "5a94053c-1e4f-4d16-8415-f400ccbe400b"

  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"
  ]
}
