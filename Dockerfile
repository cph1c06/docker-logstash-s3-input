FROM docker.elastic.co/logstash/logstash:7.2.0
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-s3 logstash-filter-grok
RUN /usr/share/logstash/bin/logstash-plugin update
