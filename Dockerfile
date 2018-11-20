FROM alpine

COPY arangomigo /usr/local/bin/
COPY migrations /migrations
COPY init.sh /usr/local/bin/

CMD init.sh
