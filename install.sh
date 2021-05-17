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
echo "[*] Installing Golang..."
wget --quiet https://dl.google.com/go/go1.15.11.linux-amd64.tar.gz
tar -xvf go1.15.11.linux-amd64.tar.gz >/dev/null
rm -rf ./go1.15.11.linux-amd64.tar.gz >/dev/null
mv go /usr/local 
export GOROOT="/usr/local/go"
export GOPATH="$homeDir/go"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:${PATH}"
source ~/.bash_profile
sleep 2
