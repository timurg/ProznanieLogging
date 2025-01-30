# Остановка и удаление старого контейнера если существует
docker rm -f proznanie_fluent_instance || true

# Удаление старого образа
docker rmi proznanie_fluent || true

# Загрузка нового образа из файла
docker load --input proznanie_fluent.tar