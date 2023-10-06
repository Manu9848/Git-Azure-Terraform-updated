resource "azurerm_key_vault_secret" "password-1" {
  name         = "password-1"
  value        = random_password.password1.result
  key_vault_id = azurerm_key_vault.devopsb36kv77.id
  #   depends_on = [
  #     #azurerm_key_vault_access_policy.trainer-access,
  #     azurerm_key_vault_access_policy.devopsb35-sp-access
  #   ]
}

resource "azurerm_key_vault_secret" "password-2" {
  name         = "password-2"
  value        = random_password.password2.result
  key_vault_id = azurerm_key_vault.devopsb36kv77.id
  #   depends_on = [
  #     #azurerm_key_vault_access_policy.trainer-access,
  #     azurerm_key_vault_access_policy.devopsb35-sp-access
  #   ]
}

resource "azurerm_key_vault_secret" "password-3" {
  name         = "password-3"
  value        = random_password.password3.result
  key_vault_id = azurerm_key_vault.devopsb36kv77.id
  #   depends_on = [
  #     #azurerm_key_vault_access_policy.trainer-access,
  #     azurerm_key_vault_access_policy.devopsb35-sp-access
  #   ]
}