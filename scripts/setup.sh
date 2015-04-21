#!/bin/bash


#golang
wget "https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz"
tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

#git
sudo yum install -y git
