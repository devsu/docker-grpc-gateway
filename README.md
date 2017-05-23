# docker-grpc-gateway
Dockerized and ready to use grpc-gateway. A GRPC gateway is generated using [GRPC Gateway Generator](https://github.com/devsu/grpc-gateway-generator) and then run.

## Usage

```bash
docker run -d \
    --name my-grpc-gateway \
    -v /path/to/config.json:/opt/generator/config/config.json \
    -v /path/to/protos:/opt/generator/protos \
    -p 8080:8080 \
    devsu/grpc-gateway
```

To re-create the gateway, you just have to restart the docker container. The proto files must have ".proto" extension to be processed. 

## Configuration File

See documentation at [grpc-gateway-generator](https://github.com/devsu/grpc-gateway-generator). Make sure the port defined in the configuration matches the port exported when running the container.

## TODO

- Try to decrease the image size by deleting foldes in /go/src (except {GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis which is needed during proxy generation)
- Try to find other ways to decrease the image size? (not sure if possible)

## License and Credits

MIT License. Copyright 2017

Built by the [Docker experts](https://devsu.com) at Devsu.