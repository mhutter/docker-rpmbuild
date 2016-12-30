FROM centos:7
MAINTAINER Manuel Hutter <manuel@hutter.io>

RUN set -x && \
    yum update -y && \
    yum install -y rpm-build git curl && \
    yum clean all && \
    useradd -c Builder -m -U builder

USER builder
