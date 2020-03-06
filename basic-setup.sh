#!/bin/bash

sudo -s
echo "sudo privilege acquired"
echo "automatic set-up of dependencies ..."
apt-get install htop
apt-get install gzip
apt-get install tmux
apt-get install zsh
apt intall wget git
chsh -s /usr/bin/zsh root
echo $SHELL
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "installations completed"
echo "configuration of zshrc and tmux ..."
cp .zshrc ~/
cp .tmux.conf ~/
echo "configuration done"
