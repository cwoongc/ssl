#!/bin/bash
#CA 가 사용할 RSA  key pair(public, private key) 생성
#개인키 분실에 대비해 AES 256bit 로 암호화한다. AES 이므로 암호(pass phrase)를 분실하면 개인키를 얻을수 없으니 꼭 기억해야 한다.
sudo openssl genrsa -aes256 -out /etc/pki/tls/private/lesstif-rootca.key 2048

#개인키의 유출 방지를 위해 group 과 other의 permission 을 모두 제거한다.
sudo chmod 600  /etc/pki/tls/private/lesstif-rootca.key
