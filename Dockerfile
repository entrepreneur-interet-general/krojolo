FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.3
COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/