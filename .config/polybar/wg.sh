#!/bin/bash
IP=$(ip a sh wg0 2> /dev/null | grep inet | awk -v FS=' ' '{print $2}')

if [[ $IP = '10.100.0.1/32' ]]; then
    echo "%{F#ED8796}󰴴 "
else
    echo "%{F#707880}"
fi
