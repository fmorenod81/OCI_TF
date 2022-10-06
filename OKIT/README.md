README.md
Iniciar el Cloud Shell
Revisar el 

Resumen ejecutivo

docker build --tag okit --no-cache --force-rm https://github.com/oracle/oci-designer-toolkit.git

docker run -d --rm -p 80:80 --volume /home/francisco_/.oci_docker:/root/.oci --name okit okit

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar xvzf ./ngrok-v3-stable-linux-amd64.tgz
./ngrok config add-authtoken <Traer la llave de NGROK>

