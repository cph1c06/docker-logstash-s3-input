FROM docker.elastic.co/logstash/logstash:latest
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-s3 logstash-filter-grok
RUN /usr/share/logstash/bin/logstash-plugin update
RUN wget https://infraplushk.com/GeoLite2-City.mmdb
