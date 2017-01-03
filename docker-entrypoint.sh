#!/bin/sh

rpmbuild="${HOME}/rpmbuild"
rh="${rpmbuild}/SOURCES/redhat"

mkdir -pv "${rh}/rpms"
ln -sv "${rh}/"*.spec "${rpmbuild}/SPECS/"
ln -sv "${rh}/rpms" "${rpmbuild}/RPMS"

exec "$@"
