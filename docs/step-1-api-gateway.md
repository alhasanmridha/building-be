# Step 1: OpenResty API Gateway Setup

Step-by-step guide to run the Lua-backed `/hello` endpoint locally with Docker.

## Prerequisites
- Docker installed and running
- `make` available (optional but recommended)

## Quick start (recommended)
1) Build and run via Make:
   ```bash
   make run-api-gateway
   ```
2) Test the endpoint:
   ```bash
   curl http://localhost:8080/hello
   ```
   Expected:
   ```json
   {"message":"hello from openresty","service":"api-gateway"}
   ```

## Manual steps (if not using Make)
1) Build the image:
   ```bash
   docker build -t api-gateway ./api-gateway
   ```
2) Run the container:
   ```bash
   docker run --rm -p 8080:8080 api-gateway
   ```
3) Call the endpoints:
   - Hello: `curl http://localhost:8080/hello`
   - Health: `curl http://localhost:8080/healthz`

## Project layout
- `api-gateway/nginx.conf` — OpenResty config with `/hello` and `/healthz`
- `api-gateway/lua/hello.lua` — Lua handler returning JSON
- `api-gateway/Dockerfile` — Builds the OpenResty image
- `Makefile` — `run-api-gateway` target to build and run

## Stopping the container
- If run via Make, Ctrl+C in that terminal stops it.
- If run with Docker directly, stop with `Ctrl+C` or `docker ps` then `docker stop <id>`.

