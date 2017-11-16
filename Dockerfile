FROM wordpress:4.8.3-apache
MAINTAINER Rho AI <dev@rho.ai>

RUN a2enmod headers

CMD ["apache2-foreground"]
