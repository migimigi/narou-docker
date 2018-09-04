#!/bin/bash

if [ ! -d "/opt/narou/.narou" ]; then
  narou init -p /opt/AozoraEpub3 -l 1.6
  narou setting device=kindle
  narou setting server-bind=*
  mv /root/.narousetting /opt/narou/
  echo -e "---\nalready-server-boot: true" > /opt/narou/.narousetting/server_setting.yaml
fi

exec "$@"
