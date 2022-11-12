#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d959b6c0-61c4-4ea6-807e-25f24334d091"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

