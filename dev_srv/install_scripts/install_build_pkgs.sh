#!/usr/bin/env bash

# General build packages
apt install -y git gcc g++ cmake python-dev python3-dev
           
# Python build packages     
apt install -y build-essential \
               libz-dev \
               libreadline-dev \
               libncursesw5-dev \
               libssl-dev \
               libgdbm-dev \
               libsqlite3-dev \
               libbz2-dev \
               liblzma-dev \
               tk-dev \
               libdb-dev \
               libc6-dev

# Micropython build packages
apt install -y build-essential \
               libreadline-dev \
               libffi-dev \
               pkg-config

# Install for libcoap build 
apt install -y autoconf \
               libtool

# Install Cunit packages: for libcoap tests
apt install -y libcunit1 libcunit1-doc libcunit1-dev

# Install for licoap examples
apt install -y asciidoc

# Install user programs
apt install -y vim tree curl tig wget sudo