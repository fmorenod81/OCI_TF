
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "instance_id" {
  description = "ocid of created instances. "
  value       = [oci_core_instance.this.id]
}

output "private_ip" {
  description = "Private IPs of created instances. "
  value       = [oci_core_instance.this.private_ip]
}

output "public_ip" {
  description = "Public IPs of created instances. "
  value       = [oci_core_instance.this.public_ip]
}
  