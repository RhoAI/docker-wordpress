FROM wordpress:4.8.3-apache
MAINTAINER Rho AI <dev@rho.ai>

ENV DEBIAN_FRONTEND noninteractive

# Enable SOAP for php
RUN apt-get update -y && apt-get install -y \
    libxml2-dev \
    php-soap \
    awscli \
    zip \
    cron \
    vim \
  && apt-get clean -y \
  && docker-php-ext-install soap

RUN a2enmod headers

COPY run_apache.sh run_backup.sh backup.sh /

CMD ["/run_apache.sh"]
