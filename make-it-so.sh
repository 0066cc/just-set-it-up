#!/bin/bash
sudo apt install vim zathura ncdu htop dict qutebrowser newsboat curl git tmux build-essential xdm lynx w3m nnn acpi rxvt-unicode-256color mutt dunst libx11-dev nitrogen net-tools acpi lm-sensors -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p ~/.config/zathura/
mkdir -p ~/.config/i3/
mkdir -p ~/Documents/git/etc
cd ~/Documents/git/etc
# suckless screen lock
git clone https://git.suckless.org/slock
cd slock
sudo make clean install
cd ..
git clone https://github.com/muquit/grabc.git
# grabc - pixel color picker
cd grabc
sudo make install
cd ..
git clone https://git.suckless.org/sent
cd sent 
sudo make 
cd ..
# bitmap fonts
git clone https://github.com/Tecate/bitmap-fonts.git
cd bitmap-fonts
sudo cp -avr bitmap/ /usr/share/fonts
xset fp+ /usr/share/fonts/bitmap
fc-cache -fv
# enabling bitmap fonts
cd /etc/fonts/conf.d/
sudo rm /etc/fonts/conf.d/10*  
sudo rm -rf 70-no-bitmaps.conf 
sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
sudo dpkg-reconfigure fontconfig
tmux source ~/.tmux.conf
source ~/.bashrc
cd ~/Documents/git/Dotfiles/
bash update-time.sh
