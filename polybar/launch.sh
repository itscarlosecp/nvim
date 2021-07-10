#!/bin/bash

killall -q polybar
while pgrap -y $UID -x polybar >/dev/null; do sleep 1; done
polybar bar &
