#!/bin/bash
sudo apt install vim zathura curl
curl -sf https://gobinaries.com/chriswalz/bit | sh;
curl -sf https://gobinaries.com/chriswalz/bit/bitcomplete | sh && echo y | COMP_INSTALL=1 bitcomplete
