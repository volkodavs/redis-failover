FROM ruby

RUN gem install redis-stat

RUN apt-get update && apt-get install -y \
  netcat-traditional

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && sleep 1

ENTRYPOINT ["/entrypoint.sh"]
