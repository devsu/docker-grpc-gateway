#!/usr/bin/env bash

echo "--- GENERATING ---"
cd /opt/generator
./generate.sh protos config/config.json gateway

echo "--- RUNNING ---"
cd /go/src/gateway/
go build grpc-gateway.go
go run grpc-gateway.go