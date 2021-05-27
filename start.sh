#!/usr/bin/env sh
mono TerrariaServer.exe \
    -port 7777 \
    -maxplayers ${maxplayers} \
    -world /world/${mapname}.wld \
    -worldpath /world \
    -autocreate ${mapsize} \
    -configpath /etc/tshock/ \
    -forceupdate \
    -logpath /logs
