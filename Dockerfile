#FROM frolvlad/alpine-glibc
FROM scratch
ADD ./k8s-prometheus-es-remote-storage /usr/local/bin/k8s-prometheus-es-remote-storage
ENTRYPOINT ["/usr/local/bin/k8s-prometheus-es-remote-storage", "--elasticsearch-url=http://elasticsearch-logging:9200"]
