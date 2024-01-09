FROM alpine:latest

RUN apk add translate-shell zellij

COPY zellij /root/.config/zellij

ENTRYPOINT zellij --layout translate


