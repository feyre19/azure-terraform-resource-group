variable "location" {
  description = "(Required) The location/region where the virtual network is created, e.g. centralus."
  default     = "centralus"
}

variable "tags" {
  description = "(Required) Map of tags to be applied to the resource"
  type        = map(any)
}
variable "environment" {
  description = "(Required) The environment platform in which resources will be deployed, e.g. dev."
  default     = "dev"
}

variable "rg_name" {
  description = "(Required) The name of the resource group where to create the resource."
  type        = string
}

variable "prefix" {
  description = "(Required) A prefix for resource name e.g. tlz - Terraform Landing Zone."
  type        = string
}
