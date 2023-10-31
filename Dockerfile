FROM alpine:latest

# Install qBittorrent-nox
RUN apk --no-cache update; apk --no-cache add qbittorrent-nox

RUN mkdir -p /root/.config/qBittorrent
COPY qBittorrent.conf /root/.config/qBittorrent/

ENTRYPOINT qbittorrent-nox --torrenting-port=63295

EXPOSE 8080 63295

