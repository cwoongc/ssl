#!/bin/bash

#aes256으로 암호화한 개인키를 생성

sudo openssl genrsa -aes256 -out /etc/pki/tls/private/lesstif.com.key 2048
