FROM whisperos/kube-builder:latest AS builder

FROM alpine:latest
RUN apk add iptables ipset ipvsadm conntrack-tools
COPY --from=builder /build/kube-proxy /
