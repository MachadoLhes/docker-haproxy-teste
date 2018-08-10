FROM haproxy:1.8-alpine

#Version: 0.1.0
#Tag: infra/haproxy-mysql

COPY src/haproxy.cfg.tmpl /usr/local/etc/haproxy/
COPY src/e /e

RUN chmod +x /e

# Make port 9090 available to the world outside this container
EXPOSE 9090

ENTRYPOINT ["/e" \
  , "--render-template=/usr/local/etc/haproxy/haproxy.cfg.tmpl:/usr/local/etc/haproxy/haproxy.cfg" \
  , "--" \
]
CMD ["usr/local/sbin/haproxy", "-W", "-db", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
