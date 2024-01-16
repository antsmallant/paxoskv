#!/bin/sh

PROTOBUF_VERSION=25.2
PROTOC_FILENAME=protoc-${PROTOBUF_VERSION}-linux-x86_64.zip
INSTALL_DIR="/usr/local/protoc"

(
cd $HOME

wget https://github.com/google/protobuf/releases/download/v$PROTOBUF_VERSION/$PROTOC_FILENAME
sudo rm -rf $INSTALL_DIR
sudo mkdir -p $INSTALL_DIR
sudo unzip $PROTOC_FILENAME -d $INSTALL_DIR
$INSTALL_DIR/bin/protoc --version

echo 'export PATH=$PATH:/usr/local/protoc/bin' >> ~/.bashrc
source ~/.bashrc
)
