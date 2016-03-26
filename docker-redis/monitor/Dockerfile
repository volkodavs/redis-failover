FROM ruby

RUN gem install redis-stat

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && sleep 1

ENTRYPOINT ["/entrypoint.sh"]
