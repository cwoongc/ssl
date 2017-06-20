#!/bin/bash

#5년짜리 lesstif.com 용 SSL 인증서 발급 (서명시 ROOT CA 개인키로 서명)
sudo openssl x509 -req -days 1825 -extensions v3_user -in /etc/pki/tls/certs/lesstif.com.csr \
-CA /etc/pki/tls/certs/lesstif-rootca.crt -CAcreateserial \
-CAkey  /etc/pki/tls/private/lesstif-rootca.key \
-out /etc/pki/tls/certs/lesstif.com.crt  -extfile host_openssl.conf
