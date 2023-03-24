#!/bin/bash

make clean
make distclean

./configure \
--with-features=huge \
--enable-cscope \
--enable-multibyte \
--enable-perlinterp=dynamic \
--enable-rubyinterp=dynamic \
--enable-luainterp=dynamic \
--enable-python3interp \
--with-python3-config-dir=/usr/lib/python3.9 \
--with-python3-command=python3 \
--with-x \
--disable-netbeans \
--with-compiledby="pirafrank <dev@fpira.com>" \
--enable-largefile \
--prefix=/usr/local \
--enable-terminal \
--enable-fontset \
--enable-fail-if-missing

make -j4 VIMRUNTIMEDIR=/usr/local/share/vim/vim90

