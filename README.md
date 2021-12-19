<!-- BEGIN_TF_DOCS -->
# azure-terraform-resource-group
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Usage

### Deploy resource group.
```hcl

module "tlz_resource_group" {
  source               = "https://github.com/feyre19/azure-terraform-resource-group"
  rg_name              = "demo"
  prefix               = var.prefix
  environment          = var.environment
  location             = var.region_primary
  tags                 = module.tlz_tagging.tags
}

```
## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.tlz_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) The environment platform in which resources will be deployed. | `string` | `dev` | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location/region where the resource group is created | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | (Required) The name of the resource group to create. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Map of tags to be applied to the resource | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group) | The map object of the Resource Group. |

<!-- END_TF_DOCS -->
