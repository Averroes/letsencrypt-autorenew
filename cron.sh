#!/bin/bash

LETSENCRYPT="/path/to/letsencrypt-auto"

echo "
################
# Script Start #
################"
# We display date
date

cd $LETSENCRYPT

if !LETSENCRYPT renew > /var/log/letsencrypt/renew.log 2>&1 ; then
    echo Automated renewal failed:
    cat /var/log/letsencrypt/renew.log
    exit 1
fi
echo "
################
# Script End   #
################"
