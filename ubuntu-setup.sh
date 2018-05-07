#!/bin/bash
sudo apt update
sudo apt upgrade 
sudo apt-get --y install curl gedit gnome-tweak-tool preload indicator-cpufreq terminator vlc gdebi gimp gimp-gmic bleachbit gparted gnome-disk-utility
sudo apt-get --y install git nodejs npm ruby zsh



# Install missing drivers (eg. Nvidia)

sudo ubuntu-drivers autoinstall


# Terminal stuff

# Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# scm_breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

# Additional Repos

# VS Code repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# ULauncher
sudo add-apt-repository ppa:agornostal/ulauncher -y

# Neofetch
sudo add-apt-repository ppa:dawidd0811/neofetch -y

# Ubuntu Cleaner
sudo add-apt-repository ppa:gerardpuig/ppa -y

# GIMP
sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge -y

# Stacer
sudo add-apt-repository ppa:oguzhaninan/stacer -y

# Firefox
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y

# Timeshift
sudo apt-add-repository -y ppa:teejee2008/ppa

# Update from repos and update new apps
sudo apt update
sudo apt install ulauncher code neofetch ubuntu-cleaner stacer firefox timeshift



# gnome settings 

# Text scaling (4K)
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2


# Applications

# Mailspring email client
sudo snap install mailspring

# Spotify
sudo snap install spotify

# Feedreader - RSS client
curl https://raw.githubusercontent.com/jangernert/FeedReader/master/scripts/install_ubuntu.sh | bash

# Terminus - terminal - not working ATM
wget https://github.com/Eugeny/terminus/releases/download/v1.0.0-alpha.46/terminus_1.0.0-alpha.46_amd64.deb
sudo dpkg -i terminus_1.0.0-alpha.46_amd64.deb
rm -f terminus_1.0.0-alpha.46_amd64.deb



# Brave Browser
sudo snap install brave



# Google Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
rm -f google-chrome-stable_current_amd64.deb




# Clean up
sudo apt-get install -f
sudo apt-get autoremove --y

source ~/.zshrc
