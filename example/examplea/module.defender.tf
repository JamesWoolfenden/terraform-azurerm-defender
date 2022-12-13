module "defender" {
  source      = "../../"
  tags = var.common_tags
  location=azurerm_resource_group.security_rg.location
  rg_name=azurerm_resource_group.security_rg.name
  mdc_contact={
    name="James Woolfenden"
    email = "james.woolfenden@gmail.com"
    phone = var.phone
    alert_notifications = true
    alerts_to_admins    = true
  }
}

variable "phone" {
  type = string
}