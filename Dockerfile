FROM debian:bookworm

RUN apt update && apt install -y live-build debootstrap squashfs-tools xorriso

WORKDIR /dist

COPY cmd.sh /cmd.sh

RUN chmod u+x /cmd.sh

CMD /cmd.sh
