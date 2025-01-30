# Запуск контейнера PostgreSQL
docker run -d --name proznanie_postgres_instance -e POSTGRES_USER=fluent -e POSTGRES_PASSWORD=r7OGYxLvOaCz -e POSTGRES_DB=proznanie_logs proznanie_postgres

# Проверка контейнера
docker exec -it proznanie_postgres_instance psql -U fluent -d proznanie_logs