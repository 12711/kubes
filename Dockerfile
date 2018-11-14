FROM whisperos/etcd-builder:latest AS builder

FROM alpine:latest
COPY --from=builder /build/etcd /
