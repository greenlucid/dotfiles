#!/bin/bash

cd $HOME
cd Downloads
wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
tar -zxf Python-3.7.9.tgz
cd Python-3.7.9
./configure
make
sudo make install

cd ..
rm -rf Python-3.7.9 Python-3.7.9.tgz

cd $HOME

## this doesn't work wtf how is this done fucking hell
apt install -y libgmp3-dev python3-pip
pip3 install ecdsa fastecdsa sympy
pip3 install cairo-lang