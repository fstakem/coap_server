#!/usr/bin/env bash

git clone https://github.com/obgm/libcoap $SERVER_DIR
cd $SERVER_DIR
./autogen.sh
./configure --enable-tests --enable-examples --enable-documentation
make
make install
