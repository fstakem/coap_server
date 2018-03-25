#!/usr/bin/env bash

git clone https://github.com/obgm/libcoap $OPENSSL_DIR
cd $OPENSSL_DIR
wget https://www.openssl.org/source/openssl-1.1.0g.tar.gz
tar -zxvf openssl-1.1.0g.tar.gz
cd openssl-1.1.0g
./config
make
make install