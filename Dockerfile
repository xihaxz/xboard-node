FROM ubuntu:latest
# ubuntu:22.04, ubuntu:20.04, ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    unzip \
    tzdata \
    ca-certificates \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && curl -L "https://github.com/wyx2685/XrayR/releases/download/v0.9.2-20240326/XrayR-linux-64.zip" -o XrayR-linux-64.zip \
    && unzip XrayR-linux-64.zip \
    && rm XrayR-linux-64.zip \
    && chmod +x /app/XrayR

ENTRYPOINT [ "XrayR", "--config", "/etc/XrayR/config.yml"]
