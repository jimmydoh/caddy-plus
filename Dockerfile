FROM caddy:2.9.1-builder AS builder

RUN xcaddy build \
    --with https://github.com/caddy-dns/cloudflare

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
