FROM google/debian:wheezy
MAINTAINER Felix Rodriguez <felix.a.rod@gmail.com>
ADD telegraf /etc/telegraf/
COPY sample-config.toml /etc/telegraf/config/config.toml
ENTRYPOINT ["/etc/telegraf/telegraf","-config","/etc/telegraf/config/config.toml"]
