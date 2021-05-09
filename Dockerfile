FROM centos:8
MAINTAINER Manuel Hutter <manuel@hutter.io>



RUN set -x && \
    yum update -y && \
    yum install -y epel-release && \
    yum install -y rpm-build git curl make python34-devel && \
    yum clean all && \
    useradd -c Builder -m -U builder && \
    mkdir -p /home/builder/rpmbuild/{SOURCES,SPECS} && \
    chown -R builder. /home/builder/rpmbuild

USER builder
WORKDIR /home/builder

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]
