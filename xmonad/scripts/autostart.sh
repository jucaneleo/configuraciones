#!/bin/sh

xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
picom &
nitrogen --restore &
setxkbmap latam
xinput --set-prop 16'libinput Accel Speed' -0.7
setxkbmap -option caps:escape
udiskie &
polybar &


