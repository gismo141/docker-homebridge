# Homebridge in a Docker-Container

The base for this image is Alpine-linux.
To ease the install-proces I'm using `mhart/alpine-node:latest` which already lifts the heavy work.

This image also features my `homebridge-server`-plugin so you can install, remove, and update plugins and adapt your config in your browser!

# How-To use?

```Bash
docker run --net="host" --privileged docker-homebridge homebridge
```

After shutdown or restart of your docker-host, resume your existing container with:

```Bash
docker attach homebridge
```
