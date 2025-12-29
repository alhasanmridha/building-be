# OpenResty API Gateway

Minimal OpenResty gateway exposing a custom Lua-backed `GET /hello` endpoint.

## Run with Docker

```bash
cd /Users/alhasan/Documents/learning/auth/api-gateway
docker build -t api-gateway .
docker run --rm -p 8080:8080 api-gateway
```

Then call:

```bash
curl http://localhost:8080/hello
```

Expected response:

```json
{"message":"hello from openresty","service":"api-gateway"}
```

