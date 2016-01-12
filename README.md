# docker-telegraf
Minimal Telegraf Container

### Config
Add your own config to /etc/telegraf/config by mounting a volume

`docker run -d -v path/to/config:/etc/telegraf/config feelobot/telegraf`
