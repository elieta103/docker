#!/bin/bash

echo "Iniciando container..."
echo "<h1>Iniciado desde un shell</h1>" > /var/www/html/ini.html
apachectl -DFOREGROUND
