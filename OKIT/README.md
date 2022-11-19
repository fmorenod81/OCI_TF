# OKIT

Para estos elementos sencillos:

1. Iniciar el Cloud Shell

2. Revisar que existe docker

~~
docker version
~~

3. Construir la imagen docker de OKIT y ejecutarla

~~
docker build --tag okit --no-cache --force-rm https://github.com/oracle/oci-designer-toolkit.git

docker run -d --rm -p 80:80 --volume /home/francisco_/.oci_docker:/root/.oci --name okit okit
~~

4. Tener una cuenta de http tunnel y ejecutarla, en mi caso ngrok, asi que loguearse en https://dashboard.ngrok.com/login y obtener el token
~~

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

tar xvzf ./ngrok-v3-stable-linux-amd64.tgz

./ngrok config add-authtoken <Traer la llave de NGROK>

./ngrok http 80
~~

5. Ingresar a la pagina de ngrok dada y poner el path, /okit/designer por ejemplo, https://01fd-129-213-201-220.ngrok.io/okit/designer
