# Остановка и удаление старого контейнера если существует
docker rm -f proznanie_postgres_instance || true

# Удаление старого образа
docker rmi proznanie_postgres || true

# Загрузка нового образа из файла
docker load --input proznanie_postgres.tar