#cloud-config
write_files:
-   content: |
-   content: |
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

        <html>
        <head>
        <title>fmorenod81/OCI_TF en GitHub</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        </head>
        <body>
        <div class="centered">Informacion Servidor</div>
        <table>
            <tr><td>HOSTNAME__</td><td>AAAA</td></tr>
            <tr><td>PRIVATEIP_</td><td>XXXX</td></tr>
            <tr><td>PUBLIC_IP_</td><td>ZZZZ</td></tr>
            <tr><td>REGIONNAME</td><td>BBBB</td></tr>
            <tr><td>AVAIL_DOM_</td><td>CCCC</td></tr>
            <tr><td>FAULT_DOM_</td><td>DDDD</td></tr>
            <tr><td>SHAPE_____</td><td>EEEE</td></tr>
            <tr><td>SHAPE_OCPU</td><td>FFFF</td></tr>
            </table>
        </body>
        </html>
    owner: opc:opc
    path: /home/opc/index.html
runcmd:
-   /bin/yum install -y nginx
-   /bin/systemctl start nginx
-   /bin/firewall-offline-cmd --add-port=80/tcp
-   /bin/systemctl restart firewalld
-   export X_HOSTNAME=$(curl http://169.254.169.254/opc/v1/instance/|jq .hostname| tr -d '"')
-   export X_PRIVATEIP=$(curl http://169.254.169.254/opc/v1/vnics/|jq .[].privateIp| tr -d '"')
-   export X_PUBLICIP=$(curl ifconfig.me)
-   export X_REGIONNAME=$(curl http://169.254.169.254/opc/v1/instance/|jq .canonicalRegionName| tr -d '"')
-   export X_AD=$(curl http://169.254.169.254/opc/v1/instance/|jq .availabilityDomain| tr -d '"')
-   export X_FD=$(curl http://169.254.169.254/opc/v1/instance/|jq .faultDomain| tr -d '"')
-   export X_SHAPE=$(curl http://169.254.169.254/opc/v1/instance/|jq .shape| tr -d '"')
-   export X_SHAPEOCPUS=$(curl http://169.254.169.254/opc/v1/instance/|jq .shapeConfig.ocpus| tr -d '"')

-   cp /usr/share/nginx/html/index.html /usr/share/nginx/html/index.original.html
-   cat /home/opc/index.html > /usr/share/nginx/html/index.html
-   sed -i "s/AAAA/$X_HOSTNAME/g" /usr/share/nginx/html/index.html
-   sed -i "s/XXXX/$X_PUBLICIP/g" /usr/share/nginx/html/index.html
-   sed -i "s/ZZZZ/$X_PRIVATEIP/g" /usr/share/nginx/html/index.html
-   sed -i "s/BBBB/$X_REGIONNAME/g" /usr/share/nginx/html/index.html
-   sed -i "s/CCCC/$X_AD/g" /usr/share/nginx/html/index.html
-   sed -i "s/DDDD/$X_FD/g" /usr/share/nginx/html/index.html
-   sed -i "s/EEEE/$X_SHAPE/g" /usr/share/nginx/html/index.html
-   sed -i "s/FFFF/$X_SHAPEOCPUS/g" /usr/share/nginx/html/index.html
-   rm /home/opc/index.html