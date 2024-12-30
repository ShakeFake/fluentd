# 基础镜像。基于官方fluentd镜像构建。
FROM quay.io/fluentd_elasticsearch/fluentd:v4.5
#ENV FLUENTD_ARGS "-o /var/log/fluentd.log"

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY ./entrypoint.sh /
COPY ./fluent.conf /etc/fluent/

RUN chmod +x /entrypoint.sh
