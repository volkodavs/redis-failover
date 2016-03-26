FROM volkodav/redis:3

COPY sentinel.conf /etc/redis/sentinel.conf

CMD [ "redis-sentinel", "/etc/redis/sentinel.conf" ]
