#/bin/bash

for port in $(seq 6371 6376); do \
  redis-server ./conf/redis_${port}.conf && echo "已启动${port} 节点"; \
done

ps -ef | grep redis