FROM docker.elastic.co/logstash/logstash:7.2.0
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-s3 logstash-filter-grok
RUN /usr/share/logstash/bin/logstash-plugin update
RUN tar -xvzf ./GeoLite2-City.tar.gz --strip-components 1
RUN rm ./GeoLite2-City.tar.gz
RUN rm ./README.txt
RUN rm ./LICENSE.txt
RUN rm ./COPYRIGHT.txt
