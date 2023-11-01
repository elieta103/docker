FROM nginx
WORKDIR /usr/share/nginx/html
COPY fruit .
ENV archivo docker
EXPOSE 90
LABEL version=1.0
RUN useradd eliel
USER eliel
RUN echo "Yo soy $(whoami)" > /tmp/yo.html
USER root
RUN cp /tmp/yo.html ./yo.html
VOLUME /var/log/nginx
CMD nginx -g 'daemon off;'
