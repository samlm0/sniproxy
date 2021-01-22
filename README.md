# sniproxy on docker

## 如何使用

首先, 确保机器的80/443端口没有被占用. 其次安装好 Docker 环境再执行以下命令
```
docker run -d --restart=always \
    --log-driver json-file \
    --log-opt max-size=10m \
    --log-opt max-file=10 \
    -p 80:80 \
    -p 443:443 \
    --name DNSUnlock \
    diaoji/sniproxy
```
