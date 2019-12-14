FROM wordpress:latest

COPY ./docker-entrypoint.sh /usr/local/bin/
RUN cp /usr/local/etc/php/php.ini-production  /usr/local/etc/php/php.ini && chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["apache2-foreground"]