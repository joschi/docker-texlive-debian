FROM debian:stretch
MAINTAINER "Jochen Schalanda <jochen@schalanda.name>"

ARG VCS_REF
ARG VERSION
ARG TEXLIVE_VERSION

LABEL org.label-schema.name="TeX Live" \
      org.label-schema.description="TeX Live image based on Debian Stretch" \
      org.label-schema.url="https://www.tug.org/texlive/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/joschi/docker-texlive-debian" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0" \
      com.microscaling.docker.dockerfile="/Dockerfile" \
      com.microscaling.license="MIT"

RUN apt-get update \
    && apt-get install -y --no-install-recommends texlive-full=$TEXLIVE_VERSION \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
