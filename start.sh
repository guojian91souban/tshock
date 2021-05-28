#!/usr/bin/env sh
mono TerrariaServer.exe \
    -port 7777 \
    -maxplayers ${maxplayers} \
    -world /data/${base}/world/${mapname}.wld \
    -worldpath /data/${base}/world \
    -autocreate ${mapsize} \
    -configpath /data/${base}/tshock/ \
    -killinactivesocket \
    -forceupdate \
    --stats-optout \
    -logpath /data/${base}/logs

