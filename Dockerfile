FROM alpine:3 AS base

RUN apk add --update --no-cache \
    ansible \
    bash \
    openssh \
    sshpass

COPY . /workspace

ENTRYPOINT []
CMD ["ansible", "--help"]

FROM base AS dev

RUN apk add --update --no-cache \
    git
