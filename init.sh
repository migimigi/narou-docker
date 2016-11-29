#!/bin/bash

if [ ! -d "/opt/narou/.narou" ]; then
  expect -c "
    spawn narou init
    expect >
    send \"/opt/AozoraEpub3\n\"
    expect eof
  "
  narou setting device=kindle
  mv /root/.narousetting /opt/narou/
  echo -e "---\nalready-server-boot: true" > /opt/narou/.narousetting/server_setting.yaml
fi

exec "$@"
