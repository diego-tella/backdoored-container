# Use a imagem base do php
FROM php:latest

# Atualize o sistema e instale o unzip
RUN apt-get update && \
    apt-get install -y unzip

#instala extensoes do php como o mysql para funcionar o WP
RUN docker-php-ext-install mysqli pdo_mysql 

#iniciar server na porta 80
ENTRYPOINT ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]

#copia o arquivo zip para o diretório /tmp no container
COPY wordpress.zip /tmp/

#descompacta o arquivo zip e mova seu conteúdo para /var/www/html
RUN unzip /tmp/wordpress.zip -d /var/www/html/

EXPOSE 80
