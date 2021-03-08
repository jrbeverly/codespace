FROM ghcr.io/linuxserver/code-server:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV PATH "$PATH:/config/.local/bin"

COPY provision/ /tmp/provision/
RUN set -x ; for x in /tmp/provision/*.bash ; do bash "$x"; done