FROM centos:7

# Install Apache
RUN yum install httpd -y

# Copy la carpeta beryllium/startbootstrap-freelancer-master al server apache en la ruta ORIGEN -DESTINO
ADD startbootstrap-freelancer-master /var/www/html

# Ejecutar el servicio de apache en primer plano, si no esta el CMD, el contenedor se muere
CMD apachectl -DFOREGROUND
