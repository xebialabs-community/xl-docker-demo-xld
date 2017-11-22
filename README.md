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

* `latest`, `v7.2.0.2`, `v7.2.0.2-slim`
* `v7.2.0.1`
* `v7.1.0.1`
* `v7.0.0.1`
* `v7.0.0.0-alpha2`
* `v7.0.0.0-alpha1`
* `v6.2.0.1`
* `v6.1.0.1`
* `v6.0.1.2`
* `v6.0.1.1`
* `v5.5.5.1`

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

## Alpha tags
Please be aware that alpha images are not stable. Anything in there can break, is not guaranteed to be backwards or forwards compatible and there will not be any kind of support provided for them.
