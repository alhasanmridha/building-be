FROM openresty/openresty:1.27.1.2-0-alpine

# Copy nginx configuration and Lua handlers
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY lua /etc/nginx/lua

EXPOSE 8080

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]

