
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

variable "group_number" {

}
variable "instance_shape" {
  default = "VM.Standard.E4.Flex"
}
variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZA1tKUesEnLKpoJWSZf+7tHAX3iVyWbjBnNhsSylHm9PGN3xYR6fZIfVb10+5hBmLLXmOmPwema7KlKYprjbBVjrvxrVrlqf1/uz9pOX9ojhHq4RSIf0nl7F1dFEYS2ONyX4tr61tYHYd7nrCFiwJJwXH25VzRmDYi6lOKkstvsKN681m3VcePiuHLwiCVv+DRAdS12B6VYTd5WMS3CtqJygFShcDgtXnLGzeVMfYiF5bCHO6spZftjbfnd4LNJl1Nc8hbrA6r0eXFYEVEF61Cut7zjKbbraAbvE2iL0qyTbXI5ap5NKLL3vhx1TtcbayCsqXg9C9Yf61oSQg8rm7 ssh-key-2024-03-07"
}
variable "user_data" {}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
  version      = 4.91
}
terraform {
  required_version = ">= 1.1.0"
}