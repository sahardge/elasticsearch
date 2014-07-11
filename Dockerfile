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
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.5.tar.gz && \
  tar xvzf elasticsearch-0.90.5.tar.gz && \
  rm -f elasticsearch-0.90.5.tar.gz && \
  mv /tmp/elasticsearch-0.90.5 /elasticsearch && \
  mkdir /mountedvol

# Define working directory.
WORKDIR /elasticsearch
# Define default command.
CMD ["bin/elasticsearch -f"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300
