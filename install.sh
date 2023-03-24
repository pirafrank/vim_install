#!/bin/bash

sudo make install

sudo update-alternatives --install /usr/bin/editor editor  /usr/local/bin/vim 10
sudo update-alternatives --set editor /usr/bin/vim editor  /usr/local/bin/vim
update-alternatives --list editor # to check your alternatives

sudo update-alternatives --install /usr/bin/vi vi  /usr/local/bin/vim 10
sudo update-alternatives --set vi /usr/local/bin/vim
update-alternatives --list vi # to check your alternatives

sudo update-alternatives --install /usr/bin/vim vim  /usr/local/bin/vim 10
sudo update-alternatives --set vi /usr/local/bin/vim
update-alternatives --list vim # to check your alternatives

# if you want to check priorities 
#update-alternatives --query editor
#update-alternatives --query vi
#update-alternatives --query vim

# if you want to change the alternative
#sudo update-alternatives --config vi
#sudo update-alternatives --config vim

# all done!

