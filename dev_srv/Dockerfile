FROM ubuntu:17.10

RUN apt-get update -y
RUN apt-get dist-upgrade -y

# Env vars
ENV USER=coap \
    HOME=/home/coap \
    TERM=xterm-256color \
    SERVER_ROOT_PATH=/opt/coap \
    SERVER_DIR=/opt/coap/libcoap \
    OPENSSL_DIR=/opt/coap/openssl \
    MICROPYTHON_DIR=/opt/coap/upython \
    SETUP_PATH=/opt/coap/setup

# Setup box
RUN mkdir -p $SETUP_PATH
COPY ./install_scripts/ $SETUP_PATH


# Root install instructions
# ----------------------------------------------------------------------------
# Install build packages
RUN chmod 777 $SETUP_PATH/install_build_pkgs.sh && \
    sleep 1 && \
    $SETUP_PATH/install_build_pkgs.sh

# Install openssl
RUN chmod 777 $SETUP_PATH/install_openssl.sh && \
    sleep 1 && \
    $SETUP_PATH/install_openssl.sh

# Install libcoap
RUN chmod 777 $SETUP_PATH/install_libcoap.sh && \
    sleep 1 && \
    $SETUP_PATH/install_libcoap.sh

# Remove apt cache to make the image smaller
# RUN rm -rf /var/lib/apt/lists/*

# Setup user
RUN useradd -ms /bin/bash -G sudo $USER
RUN chown $USER:$USER -R $SERVER_ROOT_PATH

USER coap


# User install instructions
# ----------------------------------------------------------------------------
# Config vim
RUN chmod 777 $SETUP_PATH/install_vim.sh && \
    sleep 1 && \
    $SETUP_PATH/install_vim.sh

# Install pyenv and system python
RUN chmod 777 $SETUP_PATH/install_pyenv.sh && \
    sleep 1 && \
    $SETUP_PATH/install_pyenv.sh

# Install micropython
RUN chmod 777 $SETUP_PATH/install_micropython.sh && \
    sleep 1 && \
    $SETUP_PATH/install_micropython.sh

# Finish
CMD ["/bin/bash"]