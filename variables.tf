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



variable "pricing" {
  type = list(object({
    tier          = string
    resource_type = string
  }))
}


variable "MCAS_enabled" {
  type    = bool
  default = false
}

variable "WDATP_enabled" {
  type    = bool
  default = true
}

variable "SENTINEL_enabled" {
  type    = bool
  default = false
}
