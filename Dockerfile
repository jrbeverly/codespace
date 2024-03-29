FROM ghcr.io/linuxserver/code-server:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV PATH "$PATH:/config/.local/bin:/usr/local/go/bin:/config/.dotnet"

COPY assets/media /usr/local/share/.config/yarn/global/node_modules/code-server/src/browser/media/
COPY settings/ /tmp/settings/

COPY rootfs/ /

COPY provision/ /tmp/provision/
RUN set -x ; \
    TMPDIR=$(mktemp -d 'install-XXXXXXXX') ; \
    cd ${TMPDIR} ; \
    for x in /tmp/provision/*.bash ; do bash "$x"; done ; \
    rm -rf ${TMPDIR} /tmp/settings/

LABEL org.opencontainers.image.source https://github.com/jrbeverly/codespace
