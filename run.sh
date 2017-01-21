#!/bin/sh

dbus-daemon --system
avahi-daemon -D

/usr/bin/homebridge -U /var/homebridge  > /var/log/homebridge.log 2>&1 &
