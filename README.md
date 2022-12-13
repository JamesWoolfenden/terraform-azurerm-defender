# terraform-azurerm-defender

With Secure Defaults from Checkov

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-defender/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-defender)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-defender.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-defender/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-defender.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-defender/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-defender/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-defender&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-defender/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-defender&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a very basic example.

From an original example: <https://techcommunity.microsoft.com/t5/microsoft-defender-for-cloud/deploy-microsoft-defender-for-cloud-via-terraform/ba-p/3563710>

Include **module.acr.tf** this repository as a module in your existing Terraform code:

```terraform
module "search" {
  source      = "JamesWoolfenden/search/azurerm"
  version     = "v0.1.1"
  tags     = var.common_tags
  location = azurerm_resource_group.security_rg.location
  rg_name  = azurerm_resource_group.security_rg.name
  mdc_contact = {
    name                = "James Woolfenden"
    email               = "james.woolfenden@gmail.com"
    phone               = var.phone
    alert_notifications = true
    alerts_to_admins    = true
  }
  pricing = [{
    resource_type = "VirtualMachines"
    tier          = "Standard"
    },
    {
      resource_type = "Arm"
      tier          = "Standard"
  }]
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_solution.la_workspace_security](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) | resource |
| [azurerm_log_analytics_solution.la_workspace_securityfree](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) | resource |
| [azurerm_log_analytics_workspace.la_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_role_assignment.va-auto-provisioning-identity-role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_security_center_auto_provisioning.auto-provisioning](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_auto_provisioning) | resource |
| [azurerm_security_center_automation.la-exports](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_automation) | resource |
| [azurerm_security_center_contact.mdc_contact](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_contact) | resource |
| [azurerm_security_center_setting.setting_mcas](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_setting) | resource |
| [azurerm_security_center_setting.setting_mde](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_setting) | resource |
| [azurerm_security_center_setting.setting_sentinel](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_setting) | resource |
| [azurerm_security_center_subscription_pricing.pike](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_workspace.la_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_workspace) | resource |
| [azurerm_subscription_policy_assignment.asb_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription_policy_assignment) | resource |
| [azurerm_subscription_policy_assignment.va-auto-provisioning](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription_policy_assignment) | resource |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_MCAS_enabled"></a> [MCAS\_enabled](#input\_MCAS\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_SENTINEL_enabled"></a> [SENTINEL\_enabled](#input\_SENTINEL\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_WDATP_enabled"></a> [WDATP\_enabled](#input\_WDATP\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_mdc_contact"></a> [mdc\_contact](#input\_mdc\_contact) | n/a | <pre>object({<br>    name                = string<br>    email               = string<br>    phone               = string<br>    alert_notifications = bool<br>    alerts_to_admins    = bool<br>  })</pre> | n/a | yes |
| <a name="input_pricing"></a> [pricing](#input\_pricing) | n/a | <pre>list(object({<br>    tier          = string<br>    resource_type = string<br>  }))</pre> | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_solutions"></a> [solutions](#output\_solutions) | n/a |
| <a name="output_workspace"></a> [workspace](#output\_workspace) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang

resource "azurerm_role_definition" "terraform_pike" {
  role_definition_id = local.uuid
  name               = "terraform_pike"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions = [
    "Microsoft.OperationalInsights/workspaces/delete",
    "Microsoft.OperationalInsights/workspaces/read",
    "Microsoft.OperationalInsights/workspaces/write",
    "Microsoft.Resources/subscriptions/providers/read"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

locals {
  uuid = uuid()
}

data "azurerm_subscription" "primary" {
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-defender/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-defender/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
