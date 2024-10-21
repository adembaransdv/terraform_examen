variable "resource_group_name" {
  type        = string
  description = "Nom du groupe de ressources"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Emplacement des ressources"
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["11.0.0.0/16"]
  description = "Espace d'adressage du VNet"
}

variable "subnet1_address_prefix" {
  type        = string
  default     = "11.0.0.0/24"
  description = "Adresse du subnet1"
}

variable "subnet2_address_prefix" {
  type        = string
  default     = "11.0.1.0/24"
  description = "Adresse du subnet2"
}
