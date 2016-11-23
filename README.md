# xl-docker-demo-xld #

Docker image that has XLD installed.

# Supported tags #

* `latest`, `v6.0.1.1`
* `v5.5.5.1`

# Starting #

```
docker run -v ~/xl-license:/license -p 4516:4516 xebialabs/xl-docker-demo-xld
```

The license volume mount is needed to provide a valid license, or store a license when logging in the first time. To access the UI, browse to http://[docker_ip]:4516
