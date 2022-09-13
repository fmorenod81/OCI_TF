
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_ocid" {}
variable "tenancy_ocid" {
    description="el Identificador del Tenant"
    type=string
    default = ""
}
variable "region" {}

variable "instance_shape" {
  default="VM.Standard.E2.1.Micro" # Or VM.Standard.E2.1.Micro Or VM.Standard.A1.Flex
}
variable "ssh_public_key" {}
variable "user_data" {default = ""}
/*
provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
  version      = 3.66
}
*/
provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
}

variable "user_ocid" {
  default = ""
}

variable "fingerprint" {
    default = ""
}

variable "private_key_path" {
  default = ""
}

variable "instance_ocpus" { default = 1 }

variable "instance_shape_config_memory_in_gbs" { default = 6 }
