#!/bin/bash

# Удалить неиспользуемые тома
docker volume prune -f

# Остановить и удалить старые контейнеры
docker compose down

# Запустить новые контейнеры
docker compose up --build -d