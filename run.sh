docker run -d --name elasticsearch -p 9200:9200 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.10.1

docker run -d --name proznanie_fluent_instance --link elasticsearch:elasticsearch -p 24224:24224 proznanie_fluent

docker run -d --name kibana -p 5601:5601 -e "ELASTICSEARCH_URL=http://elasticsearch:9200" docker.elastic.co/kibana/kibana:7.10.1

#http://localhost:5601