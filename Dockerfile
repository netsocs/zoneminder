FROM zoneminderhq/zoneminder:latest-ubuntu18.04

RUN rm -fr /usr/share/zoneminder/www/skins
COPY ./web/skins /usr/share/zoneminder/www/skins
RUN chmod -R 777  /usr/share/zoneminder/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]