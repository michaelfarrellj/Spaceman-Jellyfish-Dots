#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/topLeftBar1.log /tmp/topMiddleBar2.log /tmp/topRightBar3.log
polybar topLeftBar1 >>/tmp/topLeftBar1.log 2>&1 &
polybar topMiddleBar2 >>/tmp/topMiddleBar2.log 2>&1 &
polybar topRightBar3 >>/tmp/topRightBar3.log 2>&1 &

echo "Bars launched..."
