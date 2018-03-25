#!/usr/bin/env bash

git clone  --recurse-submodules https://github.com/micropython/micropython.git $MICROPYTHON_DIR
cd $MICROPYTHON_DIR/ports/unix
make axtls
make