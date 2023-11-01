FROM centos:7

# Etiqueta puede ir en cualquier nivel
LABEL version=1.0
LABEL description="This is a apache image"
LABEL vendor=ELHG

# Install Apache
RUN yum install httpd -y

# Copy la carpeta beryllium/startbootstrap-freelancer-master al server apache en la ruta ORIGEN -DESTINO
COPY startbootstrap-freelancer-master /var/www/html

# Usuario que esta ejecutando la tarea
RUN echo "$(whoami)" > /var/www/html/user1.html

#Agregar user
RUN useradd eliel 

USER eliel

# Usuario que esta ejecutando la tarea
RUN echo "$(whoami)" > /tmp/user2.html

# Guardar datos persistentes
# VOLUME /var/www/html
USER root

RUN cp /tmp/user2.html /var/www/html/user2.html

COPY run.sh /run.sh

# Ejecutar el servicio de apache en primer plano, si no esta el CMD, el contenedor se muere
CMD sh /run.sh
