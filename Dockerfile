FROM getblank/busybox
MAINTAINER Opryshko Alexandr <sclif13@gmail.com>

COPY ./blank-fs /bin/blank-fs
RUN chmod +x /bin/blank-fs \
&& mkdir /app

WORKDIR /app
EXPOSE 8082
CMD blank-fs -s ws://blank-sr:1234
