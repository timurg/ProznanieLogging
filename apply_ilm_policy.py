import requests

# Настройки Elasticsearch
es_host = "http://elasticsearch:9200"

# Политика ILM
ilm_policy = {
    "policy": {
        "phases": {
            "hot": {
                "actions": {
                    "rollover": {
                        "max_size": "2GB"
                    }
                }
            },
            "delete": {
                "min_age": "30d",
                "actions": {
                    "delete": {}
                }
            }
        }
    }
}

# Создание политики ILM
response = requests.put(
    f"{es_host}/_ilm/policy/logs_policy",
    json=ilm_policy
)

if response.status_code == 200:
    print("Политика ILM успешно создана.")
else:
    print(f"Ошибка при создании политики ILM: {response.text}")

# Создание шаблона индекса с политикой ILM
index_template = {
    "index_patterns": ["fluent-bit"],
    "template": {
        "settings": {
            "index.lifecycle.name": "logs_policy",
            "index.lifecycle.rollover_alias": "fluent-bit"
        }
    }
}

response = requests.put(
    f"{es_host}/_index_template/fluent-bit-template",
    json=index_template
)

if response.status_code == 200:
    print("Шаблон индекса успешно создан.")
else:
    print(f"Ошибка при создании шаблона индекса: {response.text}")