FROM debian:stable-slim

COPY vnstati-server /usr/local/bin/vnstati-server

RUN chmod +rx /usr/local/bin/vnstati-server && \
    apt -y update && \
    apt -y install --no-install-recommends python2.7 vnstat vnstati && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/bin/python2.7 /usr/bin/python

ENTRYPOINT ["/usr/local/bin/vnstati-server"]
