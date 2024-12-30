# 镜像build方法
    docker build --network=host  -t fluentd .

# log收集
    需要通过硬链接，将所有日志重新收集到一个固定位置。在通过fluentd将日志收集上来。

# 日志硬链接方法。
    ln -P <source_log_path> <new_log_path>

# 一些样例
## 普通日志收集到文件中
docker run -it --rm --name fluentd \
    -v /var/log/:/var/log \
    -v /tmp/githubTest/go/thirdParty/fluentd/file2file.d/:/etc/fluent/config.d/ \
    fluentd /bin/bash

## 解析日志收集到es中
docker run -it --rm --network=host --name fluentd \
    -v /var/log/:/var/log \
    -v /tmp/githubTest/go/thirdParty/fluentd/file2es.d/:/etc/fluent/config.d/ \
    fluentd /bin/bash

## client and server 见内部 readme.md
## multi-line 收集

# multi-line
docker run -it --rm --name fluentd \
    -v /var/log/:/var/log \
    -v  /tmp/githubTest/go/thirdParty/fluentd/multi-line.d/:/etc/fluent/config.d/ \
    fluentd /bin/bash

# 记录一些正则表达式
    fluentd 本身日志。
    /^(?<time>[^\[]*)\[(?<level>[^\]]*)\]: (?<info>[^\[]*)$/

