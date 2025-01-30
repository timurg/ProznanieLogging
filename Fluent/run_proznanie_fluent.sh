# Запуск контейнера Fluentd
docker run -d --name proznanie_fluent_instance --link proznanie_postgres_instance:postgres -p 24224:24224 proznanie_fluent
