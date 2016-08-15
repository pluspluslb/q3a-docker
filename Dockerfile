FROM ubuntu:14.04
RUN apt-get update && apt-get install -y ioquake3-server 
RUN useradd -ms /bin/bash q3server
USER q3server
WORKDIR /home/q3server
RUN mkdir -p /home/q3server/.q3a && chown -R q3server: /home/q3server/.q3a
CMD ["/usr/lib/ioquake3/ioq3ded", "+exec", "server.cfg"]
