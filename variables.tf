variable "subscription_id" {
    type = string
    description = "The azure subscription_ID"
}

variable "location" {
    type = string
    description  = "The Azure location where resources will be created"
    default = "East US 2"
}

variable "project" {
  type = string
  description = "Name of the project"
  default = "rentacarros2"
}

variable "environment" {
  type = string
  description = "The environment for deployment"
  default = "dev"
}

variable "tags" {
    type = map(string)
    description = "A map of tags to assign to the resource"
    default = {
        environment = "env"
        date = "Nov-2025"
        createdBy = "Terraform"
    }
}

variable "admin_sql_password" {
  type = string
  description = "A password for sql"
}

variable "backoffice" {
  type = string
  description = "all service backOffice"
  default = "backoffice"
}

variable "frontoffice" {
  type = string
  description = "all service frontOffice"
  default = "frontoffice"
}
