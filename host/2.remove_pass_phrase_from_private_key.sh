#!/bin/bash

#개인키를 보호하기 위해 Key-Derived Function 으로 개인키 자체가 암호화되어 있다. 인터넷 뱅킹등에 사용되는 개인용 인증서는 당연히 저렇게 보호되어야 하지만 SSL 에 사용하려는 키가 암호가 걸려있으면 httpd 구동때마다 pass phrase 를 입력해야 하므로 암호를 제거한다.

sudo cp  /etc/pki/tls/private/lesstif.com.key  /etc/pki/tls/private/lesstif.com.key.enc
sudo openssl rsa -in  /etc/pki/tls/private/lesstif.com.key.enc -out  /etc/pki/tls/private/lesstif.com.key
