FROM docker.elastic.co/logstash/logstash:7.2.0
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-s3 logstash-filter-grok
RUN /usr/share/logstash/bin/logstash-plugin update
TAG cph1c06/logstash-s3-input:latest
TAG cph1c06/logstash-s3-input:7.2.0
