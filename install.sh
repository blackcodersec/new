#!/bin/bash

## Colors
BK=$(tput setaf 0)   # Black
RD=$(tput setaf 1)   # Red
GR=$(tput setaf 2)   # Green
YW=$(tput setaf 3)   # Yellow
BL=$(tput setaf 4)   # blue
PP=$(tput setaf 5)   # purple
CY=$(tput setaf 6)   # Cyan
WH=$(tput setaf 7)   # White
MR=$(tput setaf 9)   # merahmuda
KN=$(tput setaf 11)  #kuning
BL1=$(tput setaf 12) # birublink
PK=$(tput setaf 13)  # pink
BLC=$(tput setaf 16) #black
BD=$(tput bold)      # Bold
NC=$(tput sgr0)

echo -e "${RED}Installing Latest Golang${NC}"
#version=$(curl -s https://golang.org/VERSION?m=text)
version=go1.15.11
wget https://golang.org/dl/$version.linux-amd64.tar.gz
sudo tar -xvf $version.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >>~/.bash_profile
echo 'export GOPATH=$HOME/go' >>~/.bash_profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >>~/.bash_profile
source ~/.bash_profile
rm -fr $version.linux-amd64.tar.gz
sleep 2
