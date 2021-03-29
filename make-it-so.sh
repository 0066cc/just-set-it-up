#!/bin/bash
sudo apt install vim zathura ncdu htop dict qutebrowser newsboat curl git tmux build-essential xdm lynx w3m nnn acpi rxvt-unicode-256color mutt dunst
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p ~/Documents/git
cd ~/Documents/git/
git clone https://git.suckless.org/slock
cd slock
sudo make clean install
tmux source ~/.tmux.conf
source ~/.bashrc
