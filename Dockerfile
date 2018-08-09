# Pull haproxy image
FROM haproxy:1.8-alpine

# Copy config file
COPY src/haproxy.cfg /usr/local/etc/haproxy/

# Make port 9090 available to the world outside this container
EXPOSE 9090