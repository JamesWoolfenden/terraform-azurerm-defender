resource "azurerm_security_center_contact" "mdc_contact" {
  name                = var.mdc_contact.name
  email               = var.mdc_contact.email
  phone               = var.mdc_contact.phone
  alert_notifications = var.mdc_contact.alert_notifications
  alerts_to_admins    = var.mdc_contact.alerts_to_admins
}
