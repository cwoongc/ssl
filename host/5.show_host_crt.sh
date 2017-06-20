$!/bin/bash

#제대로 생성되었는지 확인을 위해 인증서의 정보를 출력해 본다.

sudo openssl x509 -test -in /etc/pki/tls/certs/lesstif.com.crt

