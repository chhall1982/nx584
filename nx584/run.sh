#!/usr/bin/with-contenv bashio
python3 /usr/bin/nx584_server --listen 0.0.0.0 --serial /dev/ttyUSB2 --baud 9600 --config /usr/app/src/config.ini
