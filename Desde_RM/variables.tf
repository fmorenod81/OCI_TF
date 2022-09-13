
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

variable "instance_shape" {
  default="VM.Standard.E2.1.Micro"
}
variable "ssh_public_key" {}
variable "user_data" {}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
  version      = 3.66
}
terraform {
  required_version = ">= 0.12.0"
}    