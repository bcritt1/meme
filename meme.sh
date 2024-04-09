#!/bin/bash

mkdir -p $GROUP_HOME/$USER/src
mkdir -p $GROUP_HOME/$USER/meme

sdev -c 4
ml make perl python/3.9.0 zlib ghostscript gcc/12.1.0
cd $GROUP_HOME/$USER/src
wget https://meme-suite.org/meme/meme-software/5.5.5/meme-5.5.5.tar.gz
tar zxvf meme-5.5.5.tar.gz
cd meme-5.5.5
​​cpan Math::CDF
./configure --prefix=$GROUP_HOME/$USER/meme --enable-build-libxml2 --enable-build-libxslt
make
make test
make install
