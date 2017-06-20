#!/bin/bash

#CSR(Certificate Signing Resquest: 인증서발급요청서 .crs 파일) 만들기 

sudo openssl req -new -key /etc/pki/tls/private/lesstif-rootca.key -out /etc/pki/tls/certs/lesstif-rootca.csr -config rootca_openssl.conf

