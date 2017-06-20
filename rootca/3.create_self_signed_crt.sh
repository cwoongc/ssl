#!/bin/bash

#10년짜리 self-signed 인증서 생성
#-extensions v3_ca 옵션을 추가해야 한다.
# 인증서(.crt파일)만들기. .csr파일(in), 개인키(signkey), CSR구성파일(extfile) 필요
sudo openssl x509 -req \
-days 3650 \
-extensions v3_ca \
-set_serial 1 \
-in /etc/pki/tls/certs/lesstif-rootca.csr \
-signkey /etc/pki/tls/private/lesstif-rootca.key \
-out /etc/pki/tls/certs/lesstif-rootca.crt \
-extfile rootca_openssl.conf


#서명에 사용할 해시 알고리즘을 변경하려면 -sha256, -sha384, -sha512 처럼 해시를 지정하는 옵션을 전달해 준다.
#기본값은 -sha256 이며 openssl 1.0.2 이상이 필요
