#/bin/bash
# 方式1
# redis-cli -c -p 6371 -a 12345678 shutdown
# echo "已关闭6371节点"
# redis-cli -c -p 6372 -a 12345678 shutdown
# echo "已关闭6372节点"
# redis-cli -c -p 6373 -a 12345678 shutdown
# echo "已关闭6373节点"
# redis-cli -c -p 6374 -a 12345678 shutdown
# echo "已关闭6374节点"
# redis-cli -c -p 6375 -a 12345678 shutdown
# echo "已关闭6375节点"
# redis-cli -c -p 6376 -a 12345678 shutdown
# echo "已已关闭6376节点"


# 方式2
for port in $(seq 6371 6376); do \
  redis-cli -c -p ${port} -a 12345678 shutdown && echo "已关闭${port} 节点"; \
done

ps -ef | grep redis