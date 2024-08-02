#!/usr/bin/env bash
killall -q picom

# Launch bar
echo "---" | tee -a /tmp/picom.log
picom -bf --config /home/shinji/.config/picom/picom.conf 2>&1 | tee -a /tmp/picom.log & disown

notify-send "Picom Started"
