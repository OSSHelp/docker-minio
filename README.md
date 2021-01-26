# minio

[![Build Status](https://drone.osshelp.ru/api/badges/docker/minio/status.svg)](https://drone.osshelp.ru/docker/minio)

## Description

Based on [official MinIO image](https://hub.docker.com/r/minio/minio/) with client and healthcheck added.

## Deploy examples

``` yaml
  minio:
    image: osshelp/minio:stable
    environment:
      MINIO_ACCESS_KEY: $MINIO_ACCESS_KEY
      MINIO_SECRET_KEY: $MINIO_SECRET_KEY
      MINIO_PROMETHEUS_AUTH_TYPE: public
    volumes:
      - /mnt/data/docker/minio:/data
    networks:
      - net
```

### Internal usage

For internal purposes and OSSHelp customers we have an alternative image url:

``` yaml
  image: oss.help/pub/minio:stable
```

There is no difference between the DockerHub image and the oss.help/pub image.

## Links

- [Official Documentation](https://docs.min.io/docs/minio-quickstart-guide.html)
- [Github](https://github.com/minio/minio)

## TODO

- ...
