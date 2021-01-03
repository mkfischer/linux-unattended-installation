FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y cpio \
  dos2unix \
  qemu-img \
  qemu-kvm \
  fakeroot \
  genisoimage \
  git \
  gzip \
  isolinux \
  p7zip-full \
  pwgen \
  wget \
  whois \
  xorriso

COPY ubuntu ubuntu
COPY docker-entrypoint.sh .

ENTRYPOINT ["/docker-entrypoint.sh"]
