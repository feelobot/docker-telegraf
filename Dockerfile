FROM google/debian:wheezy
MAINTAINER Felix Rodriguez <felix.a.rod@gmail.com>
ADD telegraf /etc/telegraf/
RUN mkdir /etc/telegraf/config && \
/etc/telegraf/telegraf -sample-config > /etc/telegraf/config/config.toml
ENTRYPOINT ["/etc/telegraf/telegraf","-config","/etc/telegraf/config/config.toml"]
