FROM wordpress:4.8.3-apache
MAINTAINER Rho AI <dev@rho.ai>

# Enable SOAP for php
RUN apt-get update -y && apt-get install -y \
    libxml2-dev \
    php-soap \
  && apt-get clean -y \
  && docker-php-ext-install soap	

RUN a2enmod headers

CMD ["apache2-foreground"]
