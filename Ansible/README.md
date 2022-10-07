#Ansible

Se realizaron 2 ejemplos: uno muy simple para hacer la obtencion del namespace del Object Storage, el siguiente ejecuta una instancia gratuita muestra ejecucion del cloud-init.

Como pre-requisitos es necesario tener ansible instalado, ya sea localmente o en cloud shell. Mas informacion aqui https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/ansiblegetstarted.htm

# Namespace del Object Storage

El archivo esta en la raiz y se ejecuta asi:

```
ansible-playbook sample.yaml
```

# Instancia NGINX con Cloud Init
El archivo esta en la carpeta always_free_launch_compute_instance y se ejecuta asi:

```

export SAMPLE_COMPARTMENT_OCID=ocid1.compartment.oc1..aaaaaaaa5mqnffv37esqfvwdkem3oktflilzuzt3k3drikogaptkyncozmrq

export SAMPLE_IMAGE_OCID=ocid1.image.oc1.iad.aaaaaaaanpammf3j2xcbcoykbwlk3m35ko6svsdj2sut2fjtmnmujcnh3pvq 

ansible-playbook sample.yaml

```
