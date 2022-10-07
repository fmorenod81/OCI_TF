# CLI
Existen 2 opciones usando OCI CLI Descargado o usar un SDK, como por ejemplo Python. [Existe mas lenguajes y de descarga](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/sdks.htm)

Para este caso podriamos trabajar localmente o desde el Cloud shell.

##Cloud Shell

Para el caso Cloud Shell, podriamos usar asi ya que para autenticacion usa el Delegation Token, y no necesitamos configurar un profile. Asi que para el archivo sample.bat en Linux usamos
```
oci iam compartment list |jq ".data[] | select( .name | contains(\"Terraform\"))"|jq .\"id\" >TempFile
T=$(cat TempFile)
rm TempFile
T=$(sed -e 's/^"//' -e 's/"$//' <<<"$T" )
oci compute instance list -c $T
```
y para el caso del Python de ejemplo, usamos
```
python list_compute_tags_in_tenancy.py -dt
```

##Local
Para el caso Local, tendriamos que tener un profile o una seccion dentro del Config; y despues lanzar comandos en Windows como se ve en el archivo sample.bat
```
oci iam compartment list --profile PERSONAL|jq ".data[] | select( .name | contains(\"Terraform\"))"|jq .\"id\" > TempFile
set /p T= <TempFile
del TempFile
oci compute instance list -c %T% --profile PERSONAL
pause
```
y para ejecucion del Python de ejemplo, ejecutamos
```
python list_compute_tags_in_tenancy.py -t PERSONAL
```