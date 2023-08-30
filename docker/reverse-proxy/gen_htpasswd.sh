#!/bin/sh
set -e

USER_NAME=admin
PASSWD=Aa@123456
CRYPTPASS=`openssl passwd -6 ${PASSWD}`

echo "${USER_NAME}:${CRYPTPASS}" >> /etc/nginx/.htpasswd

exec "$@"
