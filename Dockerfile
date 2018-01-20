FROM debian:stable-slim

COPY vnstati-server /usr/local/bin/vnstati-server

RUN chmod +rx /usr/local/bin/vnstati-server && \
    apt -y update && \
    apt -y install --no-install-recommends python2.7 vnstat vnstati

ENTRYPOINT ["/usr/local/bin/vnstati-server"]
