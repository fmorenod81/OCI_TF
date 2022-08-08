oci iam compartment list|jq ".data[] | select( .name | contains(\"Francisco\"))"|jq .\"id\" > TempFile
set /p T= <TempFile
oci iam compartment list -c %T%|jq ".data[] | select( .name | contains(\"DevOps\"))"|jq .\"id\" > TempFile
set /p T= <TempFile
oci compute instance list -c %T%
del TempFile
pause
