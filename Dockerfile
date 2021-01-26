FROM minio/mc:RELEASE.2020-09-03T00-08-28Z as client
FROM minio/minio:RELEASE.2020-09-10T22-02-45Z

LABEL maintainer="OSSHelp Team, https://oss.help"
LABEL description="Minio Server + Client"

COPY --from=client /usr/bin/mc /usr/bin/

ENV MINIO_USERNAME nobody
ENV MINIO_GROUPNAME nobody

CMD ["server","/data"]

HEALTHCHECK --interval=1m --timeout=5s --start-period=5s \
  CMD curl -isf --show-error http://127.0.0.1:9000/minio/health/live
