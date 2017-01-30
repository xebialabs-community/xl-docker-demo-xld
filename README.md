# xl-docker-demo-xld #

Docker image that has XLD installed.

# Supported tags #

* `latest`, `v6.1.0.1`
* `v6.0.1.2`
* `v6.0.1.1`
* `v5.5.5.1`

# Starting #

```
docker run -v ~/xl-license:/license -p 4516:4516 xebialabs/xl-docker-demo-xld
```

The license volume mount is needed to provide a valid license, or store a license when logging in the first time. To access the UI, browse to http://[docker_ip]:4516

# Alpha tags #
Please be aware that alpha images are not stable. Anything in there can break, is not guaranteed to be backwards or forwards compatible and there will not be any kind of support provided for them.
