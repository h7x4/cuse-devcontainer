FROM debian:latest

RUN apt-get update
RUN apt-get install --no-install-recommends --yes \
  build-essential \
  pkg-config \
  fuse3 \
  libfuse3-dev

CMD ["/usr/bin/env", "bash"]
