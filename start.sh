#!/usr/bin/env bash

echo "--- GENERATING ---"
cd /opt/generator
./generate.sh protos config/config.json /go/src/app

echo "--- RUNNING ---"
cd /go/src/app/
go build grpc-gateway.go
go run grpc-gateway.go