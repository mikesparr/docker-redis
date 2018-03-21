FROM redis

# Override config with local version
COPY redis.conf /usr/local/etc/redis/redis.conf

# Start server with new config
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

