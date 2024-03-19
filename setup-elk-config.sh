#!/bin/bash

# Define the base directory for ELK config files.
BASE_DIR="./elk-config"

# Create directory structure for Elasticsearch configuration
mkdir -p "${BASE_DIR}/elasticsearch"
# Elasticsearch configuration
ES_CONFIG="${BASE_DIR}/elasticsearch/elasticsearch.yml"
cat > "${ES_CONFIG}" << EOF
cluster.name: "docker-cluster"
network.host: 0.0.0.0
discovery.type: single-node
EOF

# Create directory structure for Kibana configuration
mkdir -p "${BASE_DIR}/kibana"
# Kibana configuration
KIBANA_CONFIG="${BASE_DIR}/kibana/kibana.yml"
cat > "${KIBANA_CONFIG}" << EOF
server.name: kibana
server.host: "0"
elasticsearch.hosts: [ "http://elasticsearch:9200" ]
monitoring.ui.container.elasticsearch.enabled: true
EOF

# Create directory structure for Logstash configuration
mkdir -p "${BASE_DIR}/logstash"
# Logstash pipeline configuration
LOGSTASH_PIPELINE_CONFIG="${BASE_DIR}/logstash/logstash.conf"
cat > "${LOGSTASH_PIPELINE_CONFIG}" << EOF
input {
  beats {
    port => 5044
  }
}

output {
  elasticsearch {
    hosts => ["http://elasticsearch:9200"]
    manage_template => false
    index => "%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}"
    document_type => "%{[@metadata][type]}"
  }
}
EOF

# Logstash general configuration
LOGSTASH_CONFIG="${BASE_DIR}/logstash/logstash.yml"
cat > "${LOGSTASH_CONFIG}" << EOF
http.host: "0.0.0.0"
xpack.monitoring.elasticsearch.hosts: ["http://elasticsearch:9200"]
EOF

# Print a message indicating success
echo "ELK configuration files have been created/updated."
