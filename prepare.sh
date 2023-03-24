#!/bin/bash

# install basic deps for headless-machine vim
sudo apt-get install build-essential libncurses-dev python3-dev ruby-dev libperl-dev

# install vim-gtk dep only if !headless
#sudo apt-get build-dep vim-gtk

# install some more deps, only if !headless
#sudo apt-get install build-essential \
#libncurses5-dev libgtk-3-dev libatk1.0-dev \
#libcairo2-dev libx11-dev libxpm-dev libxt-dev \
#python3-dev ruby-dev libperl-dev \
#lua5.2 liblua5.2-0 liblua5.2-dev

# NOTE: if you don't have it already installed, get latest git.
#       you can do it with the lines below.
#sudo add-apt-repository ppa:git-core/ppa
#sudo apt-get update
#sudo apt-get install git

cd && \
mkdir vim9 && cd vim9 && \
git clone https://github.com/vim/vim.git && \
cd vim

