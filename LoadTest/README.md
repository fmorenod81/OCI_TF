#Ejecucion pruebas de carga

Primero se descarga la version adecuada y se dispone para su ejecucion
```
wget https://github.com/grafana/k6/releases/download/v0.40.0/k6-v0.40.0-linux-amd64.tar.gz

tar zxvf k6-v0.40.0-linux-amd64.tar.gz --strip-components=1

chmod +x k6
```
Luego se va a la ruta donde esta el archivo Node para su ejecucion, y se hace la configuracion antes de iniciar.

Finalmente se ejecuta, ya que el ejecutable esta en la raiz

```
~/k6 run test_lb.js
```