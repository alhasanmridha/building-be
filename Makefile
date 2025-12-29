# run api-gateway
run-api-gateway:
	docker build -t api-gateway ./api-gateway
	docker run --rm -p 8080:8080 api-gateway