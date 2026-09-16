FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y openssh-server sudo bash coreutils findutils grep file binutils && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd

RUN useradd -m -s /bin/bash player && \
    echo "player:hackquest" | chpasswd


COPY game/ /opt/hackquest/

RUN chmod -R 755 /opt/hackquest && \
    /opt/hackquest/level1.sh && \
    /opt/hackquest/level2.sh && \
    /opt/hackquest/level3.sh && \
    /opt/hackquest/level4.sh && \
    /opt/hackquest/level5.sh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]
