FROM centos:7

# Install Apache
RUN yum install httpd -y

# Directorio de trabajo
WORKDIR /var/www/html

# Copy la carpeta beryllium/startbootstrap-freelancer-master al server apache en la ruta ORIGEN -DESTINO
COPY startbootstrap-freelancer-master .

#Variable de entorno
ENV contenido prueba

# Mandar contenido de la variable de entorno al html
RUN echo "$contenido" > /var/www/html/prueba.html

# Exponer un puerto diferente al que por defecto usa apache
#EXPOSE 81 

# Ejecutar el servicio de apache en primer plano, si no esta el CMD, el contenedor se muere
CMD apachectl -DFOREGROUND
