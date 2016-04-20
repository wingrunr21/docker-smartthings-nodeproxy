FROM node:5

RUN cd /usr/src && git clone https://github.com/wingrunr21/SmartThings-Honeywell.git
RUN cd /usr/src/SmartThings-Honeywell/smartthings-nodeproxy && git checkout config_argument && npm install

WORKDIR /usr/src/SmartThings-Honeywell/smartthings-nodeproxy
VOLUME /config
EXPOSE 80
CMD ["npm", "start", "--", "-c", "/config/config.json"]
