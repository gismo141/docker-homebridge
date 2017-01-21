FROM mhart/alpine-node:latest
WORKDIR /src
ADD . .

RUN apk add --update --no-cache libc-dev gcc g++ make avahi-dev avahi-compat-libdns_sd git dbus avahi

RUN npm install -g homebridge homebridge-server

RUN mkdir -p /var/homebridge/
RUN mkdir -p /var/log/

RUN mkdir -p /var/run/dbus
RUN sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

ADD config.json /var/homebridge/config.json
ADD run.sh /var/homebridge/run.sh

EXPOSE 5353 8765 51826

CMD ["/var/homebridge/run.sh"]
