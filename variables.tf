variable "tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "mdc_contact" {
  type = object({
    name                = string
    email               = string
    phone               = string
    alert_notifications = bool
    alerts_to_admins    = bool
  })
}

variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}