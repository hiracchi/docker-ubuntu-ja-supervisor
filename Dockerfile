FROM hiracchi/ubuntu-ja:latest
MAINTAINER Toshiyuki HIRANO <hiracchi@gmail.com>

RUN apt-get update && \
    apt-get install -y supervisor && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD mv /etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf.orig
COPY supervisord.conf /etc/supervisor/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord"]

