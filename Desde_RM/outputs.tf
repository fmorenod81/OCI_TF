
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "instance_id" {
  description = "ocid of created instances. "
  value       = [oci_core_instance.free_instance0.id]
}

output "private_ip" {
  description = "Private IPs of created instances. "
  value       = [oci_core_instance.free_instance0.private_ip]
}

output "public_ip0" {
  description = "Public IPs of created instances. Instance0. "
  value       = [oci_core_instance.free_instance0.public_ip]
}
output "public_ip1" {
  description = "Public IPs of created instances. Instance1"
  value       = [oci_core_instance.free_instance1.public_ip]
}

output "loadbalancer_ip" {
  description = "Public IPs of Load Balancer. "
  value       = [oci_load_balancer_load_balancer.free_load_balancer.ip_address_details[0].ip_address]
}