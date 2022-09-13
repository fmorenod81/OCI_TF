rem Demostracion usando OCI CLI en un equipo con Profile PERSONAL dentro del archivo $HOME/.oci/config 
oci iam compartment list --profile PERSONAL|jq ".data[] | select( .name | contains(\"Terraform\"))"|jq .\"id\" > TempFile
set /p T= <TempFile
del TempFile
oci compute instance list -c %T% --profile PERSONAL
pause

rem Para usar el SDK python de manera sencilla se puede usar. El codigo fue tomado de https://github.com/adizohar/list_resources_in_tenancy
rem python list_compute_tags_in_tenancy.py -t PERSONAL