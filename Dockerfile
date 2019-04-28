FROM quay.io/vesica/php72:latest

RUN a2enmod proxy && \
  a2enmod proxy_http && \
  a2enmod proxy_ajp && \
  a2enmod rewrite && \
  a2enmod deflate && \
  a2enmod headers && \
  a2enmod proxy_balancer && \
  a2enmod proxy_connect && \
  a2enmod ssl && \
  a2enmod cache

COPY vhosts/* /etc/apache2/sites-enabled/
