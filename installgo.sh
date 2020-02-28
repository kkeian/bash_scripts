#!/bin/bash

# Installs go toolchain and go version 1.14 to system
wget -P $HOME https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz 
tar xzvf $HOME/go1.4-bootstrap-20171003.tar.gz -C $HOME
mv $HOME/go/ $HOME/go1.4/
export CGO_ENABLED=0
cd $HOME/go1.4/src/ && ./make.bash
git clone https://go.googlesource.com/go $HOME/goroot
cd $HOME/goroot && git checkout go1.14
cd $HOME/goroot/src/ && ./all.bash
sed -i "$ a shopt -s extglob\nexport GOLOC=/home/$USER/goroot/bin\nexport PATH=$PATH:$GOLOC" ~/.bashrc
rm $HOME/go1.4-bootstrap-20171003.tar.gz
