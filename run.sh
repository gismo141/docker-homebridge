#!/bin/sh

dbus-daemon --system
avahi-daemon -D

service dbus start
service avahi-daemon start

/usr/bin/homebridge -U /var/homebridge  > /var/log/homebridge.log
