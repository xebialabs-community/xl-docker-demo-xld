# xl-docker-demo-xld

Docker image that has XLD installed.

## CI status

[![Docker Hub][xl-docker-demo-xld-docker-hub-image] ][xl-docker-demo-xld-docker-hub-url]
[![License: MIT][xl-docker-demo-xld-license-image] ][xl-docker-demo-xld-license-url]


[xl-docker-demo-xld-docker-hub-image]: https://img.shields.io/badge/docker-ready-blue.svg
[xl-docker-demo-xld-docker-hub-url]: https://registry.hub.docker.com/u/xebialabs/xl-docker-demo-xld/
[xl-docker-demo-xld-license-image]: https://img.shields.io/badge/License-MIT-yellow.svg
[xl-docker-demo-xld-license-url]: https://opensource.org/licenses/MIT



## Supported tags

+ `latest` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/master/Dockerfile)
+ `latest-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/master/Dockerfile-slim)
+ `v8.1.0.1`, `v8.1.0.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.1.0.1/Dockerfile)
+ `v8.1.0.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.1.0.1/Dockerfile-slim)
+ `v8.0.7.1`, `v8.0.7.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.7.1/Dockerfile)
+ `v8.0.7.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.7.1/Dockerfile-slim)
+ `v8.0.5.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.5.1/Dockerfile)
+ `v8.0.5.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.5.1/Dockerfile-slim)
+ `v8.0.0.1`, `v8.0.0.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.0.1/Dockerfile)
+ `v8.0.0.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v8.0.0.1/Dockerfile-slim)
+ `v7.6.0.1`, `v7.6.0.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.6.0.1/Dockerfile)
+ `v7.6.0.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.6.0.1/Dockerfile-slim)
+ `v7.5.0.2`, `v7.5.0.2-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.5.0.2/Dockerfile)
+ `v7.5.0.2-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.5.0.2/Dockerfile-slim)
+ `v7.5.0.1`, `v7.5.0.1-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.5.0.1/Dockerfile)
+ `v7.5.0.1-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.5.0.1/Dockerfile-slim)
+ `v7.2.0.3`, `v7.2.0.3-alpine` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.2.0.3/Dockerfile)
+ `v7.2.0.3-slim` [Dockerfile](https://github.com/xebialabs-community/xl-docker-demo-xld/blob/v7.2.0.3/Dockerfile-slim)
+ `v7.2.0.2`
+ `v7.2.0.1`
+ `v7.1.0.1`
+ `v7.0.0.1`
+ `v7.0.0.0-alpha2`
+ `v7.0.0.0-alpha1`
+ `v6.2.0.1`
+ `v6.1.0.1`
+ `v6.0.1.2`
+ `v6.0.1.1`

## Dockerfile
+ `Dockerfile` builds the container with base image `jre-alpine`
+ `Dockerfile-slim` builds the container with base image `jre-slim`

## Starting

### Running an empty XL Deploy with the repository stored inside the docker container

```
docker run --rm -v ~/xl-licenses:/license -p 4516:4516 xebialabs/xl-docker-demo-xld
```

### Running an empty XL Deploy with the repository stored outside the docker container as a volume

```
docker run --rm -v [repo_location]:/opt/xld/server/repository -v ~/xl-licenses:/license -p 4516:4516 xebialabs/xl-docker-demo-xld
```

The license volume mount is needed to provide a valid license, or store a license when logging in the first time. To access the UI, browse to http://[docker_ip]:4516

## Extending this image

If you're creating an image based on this image as a parent, know that you can add a config fragment (i.e. `myapp.conf`) to the `/etc/supervisor/conf.d` directory, see the supervisor docs [here](http://supervisord.org/configuration.html#include-section-settings). That will allow you to add your own programs to supervisor without having to override (copy/paste) the entire file.

## Alpha tags
Please be aware that alpha images are not stable. Anything in there can break, is not guaranteed to be backwards or forwards compatible and there will not be any kind of support provided for them.
