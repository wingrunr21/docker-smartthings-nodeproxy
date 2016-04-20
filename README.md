# Docker SmartThings Node Proxy

This is a Docker container for the [smartthings-nodeproxy](https://github.com/redloro/smartthings/tree/master/smartthings-nodeproxy) by [redloro](https://github.com/redloro).

## Usage

### Set up config

This container relies on an external volume to store the configuration. Take a look at the [stock config](https://github.com/redloro/smartthings/blob/master/smartthings-nodeproxy/config.json) and modify it for your setup.

Note that if you change the default port (8080), you will also need to change it below (in the `-p 8080:8080` section).

Store the config somewhere on your host machine. This directory will be mounted to the `/config` directory within the container.

### Set up container

```bash
docker build -t wingrunr21/smartthings-nodeproxy https://github.com/wingrunr21/docker-smartthings-nodeproxy
docker create --name=smartthings-nodeproxy --restart=unless-stopped -v /path/to/config/directory:/config -p 8080:8080 wingrunr21/smartthings-nodeproxy
```

### Run the container
```bash
docker start smartthings-nodeproxy
```

### Complete Installation

Follow the [original instructions](https://github.com/redloro/smartthings#smartthings-smartapps).
