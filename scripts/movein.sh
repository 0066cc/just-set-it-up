#!/bin/bash
cd ~/Documents/git/Dotfiles/ 

cp ~/.tmux.conf . 
cp ~/.Xresources .  
cp ~/.bashrc  . 
cp ~/.vimrc . 
cp ~/.xsession . 
cp ~/.xinitrc . 
cp ~/.i3status.conf . 
cp ~/.inputrc . 

cp ~/.config/i3/config .config/i3/config 
cp ~/.config/zathura/zathurarc .config/zathura/zathurarc
cp ~/.config/qutebrowser/config.py .config/qutebrowser/config.py 
cp ~/.newsboat/config .newsboat/config 

cp ~/Documents/scripts/chime.sh scripts/chime.sh
cp ~/Documents/scripts/chime.mp3 scripts/chime.mp3
cp ~/Documents/scripts/tone.mp3 scripts/tone.mp3
cp ~/Documents/scripts/movein.sh scripts/movein.sh

cp ~/Documents/scripts/news.sh scripts/news.sh

# Start commiting
git add .tmux.conf 
git add .Xresources 
git add .bashrc  
git add .vimrc
git add .xsession 
git add .xinitrc
git add .i3status.conf
git add .inputrc

git add .config/
git add .newsboat/
git add scripts/


# All good? Push it.
git commit -m \"Automated\ update\" && git push origin master
