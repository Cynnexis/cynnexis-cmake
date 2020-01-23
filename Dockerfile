FROM ubuntu:18.04
MAINTAINER Valentin Berger
LABEL maintainer="Valentin Berger"

ARG DEBIAN_FRONTEND=noninteractive

COPY *.sh /
RUN chmod +x install-cmake.sh && sleep 1 && ./install-cmake.sh && rm install-cmake.sh
