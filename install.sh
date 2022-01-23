#!/bin/bash

cd $HOME


snap remove firefox

# nvidia
## usually gnome handles this but I don't know how it does it
apt purge nvidia*
apt install nvidia-drivers-495

apt install firefox
# append firefox to favorites
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'firefox.desktop']"

## remove beeps from terminal: goto /etc/inputrc and append "set bell-style none"
sudo echo "set bell-style none" >> /etc/inputrc

## FIREFOX
## this is hard. check out https://github.com/arkenfox/user.js/
## goes in length about how to set it up initially. still, the extensions
## seem to work differently.
## a way to do this is, just save your .mozilla/firefox before hopping and paste it.
## upload it encrypted wherever, or whatever

## TODO:
# middlemouse.paste = false
# dark mode
# remove bloat search
# remove search suggestions. I have >100 IQ I don't need it
## END FIREFOX

## GNOME
# dark mode?
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
# change terminal theme to basauri
## (gnome dark. bold is brighter. background is darker, text is whiter.)

## vim
apt install neovim

## git
apt install git
git config --global user.name "Green"
git config --global user.email "not@my.email"

## vscode
apt install code
# append code to favorites
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"
./installers/vscode-extensions.sh

## set dotfiles
./installers/link-dotfiles.sh

## CAIRO
./installers/cairo.sh

## normie programs I need
snap install slack --classic
# discord
# telegram