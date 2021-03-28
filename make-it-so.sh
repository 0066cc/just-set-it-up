#!/bin/bash
sudo apt install vim zathura ncdu htop dict newsboat curl git tmux build-essential xdm lynx w3m nnn acpi rxvt-unicode-256color mutt
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
