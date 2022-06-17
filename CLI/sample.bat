oci iam compartment list|jq ".data[] | select( .name | contains(\"TestTerraform\"))"|jq .\"id\" > TempFile
set /p T= <TempFile
oci compute instance list -c %T%
del TempFile
pause