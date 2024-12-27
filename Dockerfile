FROM alpine:3 AS base

ARG OWNER=codekaizen-github
ARG REPO=ansible-docker-blue-green-deploy

LABEL org.opencontainers.image.source=https://github.com/${OWNER}/${REPO}

RUN apk add --update --no-cache \
    ansible \
    bash \
    openssh \
    sshpass

COPY . /workspace

RUN ANSIBLE_CONFIG=/workspace/ansible/ansible.cfg ansible-galaxy install -r /workspace/ansible/requirements.yml

ENTRYPOINT []
CMD ["ansible", "--help"]

FROM base AS dev

RUN apk add --update --no-cache \
    git
