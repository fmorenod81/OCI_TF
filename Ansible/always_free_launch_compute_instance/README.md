# Overview

This sample shows how an [Always Free](https://www.oracle.com/cloud/free/) public compute instance can be [launched](https://docs.us-phoenix-1.oraclecloud.com/Content/Compute/Tasks/launchinginstance.htm) and [accessed](https://docs.us-phoenix-1.oraclecloud.com/Content/Compute/Tasks/accessinginstance.htm) from the internet using SSH, through OCI ansible cloud modules.

The sample 
- generates a temporary host-specific SSH key-pair
- specifies the public key from that key-pair to connect to the instance during instance launch and 
- demonstrates how the newly launched instance can be connected to using SSH.

# Instructions

To run the sample, after ensuring that you have the pre-requisites for OCI ansible cloud modules, please provide values (that are specific to your tenancy) for the following variables in the `vars` section of `sample.yaml`:
- instance_ad
- instance_compartment
- instance_image  # provide an OL image


# Example

Using Cloud Shell, you have to install 
```
ansible-galaxy collection install oracle.oci
```
Then 

```

export SAMPLE_COMPARTMENT_OCID=ocid1.compartment.oc1..aaaaaaaa5mqnffv37esqfvwdkem3oktflilzuzt3k3drikogaptkyncozmrq

export SAMPLE_IMAGE_OCID=ocid1.image.oc1.iad.aaaaaaaanpammf3j2xcbcoykbwlk3m35ko6svsdj2sut2fjtmnmujcnh3pvq 

ansible-playbook sample.yaml

```

Taken from:
Compartments, https://docs.oracle.com/en-us/iaas/images/image/34818645-b3f2-4066-8748-2d47f4698f96/
and add the Cloud-Init https://github.com/oracle/oci-ansible-collection/tree/master/samples/compute/service_gateway 
compatible image with AMD.E2.1.micro