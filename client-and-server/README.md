# client and server
  client to server 转发信息

# 这个还没办法配置 parser，这个鬼东西。

## client
docker run -it --rm --network=host --name client \
    -v /var/log/:/var/log \
    -v /tmp/githubTest/go/thirdParty/fluentd/client-and-server/config-client.d/:/etc/fluent/config.d/ \
    fluentd /bin/bash

## server
docker run -it --rm --network=host --name server \
    -v /var/log/:/var/log \
    -v /tmp/githubTest/go/thirdParty/fluentd/client-and-server/config-server.d/:/etc/fluent/config.d/ \
    fluentd /bin/bash
