FROM stackbrew/ubuntu:saucy
MAINTAINER Scott Fleckenstein <nullstyle@gmail.com>

ENV     HOME /root
ENV     GOPATH /root/go
VOLUME  ["/var/skydns"]

RUN apt-get update
RUN apt-get install -y git-core
RUN apt-get install -y golang
RUN mkdir /root/go

RUN git clone https://github.com/skynetservices/skydns.git
RUN cd /skydns && GOPATH=/root/go go get -d -v ./...
RUN cd /skydns && GOPATH=/root/go go build
RUN mv /skydns/skydns /usr/local/bin/

EXPOSE 53
EXPOSE 8080
 
ENV SKYDNS_DNS    0.0.0.0:53
ENV SKYDNS_DOMAIN skydns.local
ENV SKYDNS        0.0.0.0:8080

CMD ["skydns", "-data", "/var/skydns"]