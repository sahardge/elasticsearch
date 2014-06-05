#
# ElasticSearch Dockerfile
#
# https://github.com/dockerfile/elasticsearch
#
 
# Pull base image.
FROM dockerfile/java
 
# Install ElasticSearch.
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.tar.gz && \
  tar xvzf elasticsearch-0.90.3.tar.gz && \
  rm -f elasticsearch-0.90.3.tar.gz && \
  mv /tmp/elasticsearch-0.90.3 /elasticsearch && \
  mkdir /mountedvol

# Define working directory.
WORKDIR /mountedvol

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300
