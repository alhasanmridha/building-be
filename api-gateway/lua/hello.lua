local cjson = require "cjson.safe"

local body = {
  message = "hello from openresty",
  service = "api-gateway"
}

ngx.header.content_type = "application/json"
ngx.say(cjson.encode(body))

