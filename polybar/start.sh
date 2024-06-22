#!/usr/bin/env bash
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

notify-send "Polybar Started"
