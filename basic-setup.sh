#!/bin/bash

echo "sudo privilege acquired"
echo "automatic set-up of dependencies ..."
sudo apt-get install htop
sudo apt-get install gzip
sudo apt-get install tmux
sudo apt-get install zsh
sudo apt-get install wget git
sudo chsh -s /usr/bin/zsh root
echo $SHELL
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "installations completed"
echo "configuration of zshrc and tmux ..."
cp .zshrc ~/
cp .tmux.conf ~/
echo "configuration done"
