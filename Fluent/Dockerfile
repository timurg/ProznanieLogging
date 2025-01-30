FROM fluent/fluentd:v1.12-1

USER root

# Установка необходимых зависимостей
RUN apk add --no-cache --update \
    build-base \
    ruby-dev

# Установка совместимой версии zeitwerk
RUN gem install zeitwerk -v 2.6.18

# Установка совместимой версии faraday
RUN gem install faraday -v 1.10.0

# Установка fluent-plugin-elasticsearch версии 4.0.7, совместимой с Ruby 2.7
RUN gem install fluent-plugin-elasticsearch -v 4.0.7 --no-document

COPY fluent.conf /fluentd/etc/fluent.conf

USER fluent