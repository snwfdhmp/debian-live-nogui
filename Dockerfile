FROM debian:bookworm

RUN apt update && apt install -y live-build debootstrap squashfs-tools xorriso

WORKDIR /dist

COPY profiles /profiles
