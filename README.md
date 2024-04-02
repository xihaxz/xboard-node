# 简单使用教程

1. `mkdir xb` 新建xb文件夹，写 docker-compose.yml  
```
version: '3'
services:
  xboard-node:
    image: ghcr.io/xihaxz/xboard-node:latest
    container_name: xboard-node
    restart: always
    # volumes:
      # - ./dns.json:/etc/XrayR/dns.json # 挂载当前目录的配置文件到容器内部。
      # - ./config.yaml:/etc/XrayR/config.yml # 挂载当前目录的配置文件到容器内部。
    network_mode: host # host 模式方便监听ipv4/ipv6 。
    # command: ppp --mode=server 
```
2. 启动  
```
docker compose up -d
```
3.查看log
```
docker logs -f xboard-node
 ```
