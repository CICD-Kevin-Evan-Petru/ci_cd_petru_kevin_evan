FROM ubuntu:latest

RUN apt-get update && apt-get install -y mysql-client

COPY dumpscript.sh /usr/local/bin/dumpscript.sh

RUN chmod +x /usr/local/bin/dumpscript.sh

CMD ["/usr/local/bin/dumpscript.sh"]
