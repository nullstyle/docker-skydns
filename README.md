[![Stories in Ready](https://badge.waffle.io/nullstyle/docker-skydns.png?label=ready)](https://waffle.io/nullstyle/docker-skydns)

# Docker Image for Skydns
**Version**: 0.1.0
**Docker Versions**: >=0.7.5

Skydns is a lightweight, distributed DNS server targeted for use as an internal service discovery mechanism.  See https://github.com/skynetservices/skydns for a full description.  This docker image can be used to integrate skydns in your own infrastructure 

## Building

This image can be built by running the following docker command:

```
docker build -t skydns github.com/nullstyle/docker-skydns
```

> You can build from a git tag by appending a ref to the above URL.
> For example `github.com/nullstyle/docker-skydns#0.1.0`

## Running

```
# expose port 8080 for writing to the db (i.e. announcing services)
# expose port 53 for serving dns queries

docker run -p 8080:8080 -p 53:53 -i -t skydns
```

## Using

See https://github.com/skynetservices/skydns

## Notes

- The data directory for skydns is /var/skydns

## TODO

- Add support for configuring a secret from environment variables
- Add support for joining a cluster from environment variables
- Add runit support for auto-restarts