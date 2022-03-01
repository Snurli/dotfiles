#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

for m in $screens; do
    xrandr --output $m --primary
    polybar mybar >/dev/null 2>&1 &
    sleep 1
done
