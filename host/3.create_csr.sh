#!/bin/bash

sudo openssl req -new \
-key /etc/pki/tls/private/lesstif.com.key \
-out /etc/pki/tls/certs/lesstif.com.csr \
-config host_openssl.conf

