
resource "azurerm_resource_group" "tlz_resource_group" {
  name     = "${var.prefix}-${var.environment}-${var.rg_name}-${local.resource_type}-${var.location}"
  location = var.location
  tags = merge(
    {
      "Name" = "${var.prefix}-${var.environment}-${var.rg_name}-${local.resource_type}-${var.location}"
    },
    var.tags
  )
}
