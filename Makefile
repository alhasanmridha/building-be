# run api-gateway
run-api-gateway:
	docker build -t api-gateway ./api-gateway
	docker run --rm --name api-gateway -p 8080:8080 api-gateway
stop-api-gateway:
	docker stop api-gateway