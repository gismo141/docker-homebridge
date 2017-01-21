**WORK IN PROGRESS - FOR TESTING ONLY**

# Homebridge in a Docker-Container

The base for this image is Alpine-linux.
To ease the install-proces I'm using `mhart/alpine-node:latest` which already lifts the heavy work.

This image also features my `homebridge-server`-plugin so you can install, remove, and update plugins and adapt your config in your browser!


```
docker ps -s
... SIZE: 2.417 kB (virtual 322.2 MB)
```

# How-To use?

```Bash
docker run -d --restart=always --net=host --name="homebridge" --privileged gismo141/homebridge
```

After shutdown or restart of your docker-host, resume your existing container with:

```Bash
docker attach homebridge
```
