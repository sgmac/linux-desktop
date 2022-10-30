#!/bin/bash

### Thanks to Joss Rosso for sharing his installation process, all the credit goes to him.

echo
echo "installing aur packages"
echo
TEMP_DIR=$(mktemp -d)
CURRENT_DIR=$(pwd)

# Load extra keys
# dropbox
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
# spotify
gpg --recv-keys 5E3C45D7B312C643

while read AUR_PKG
do
  if ! pacman -Q ${AUR_PKG} > /dev/null; then
    cd $TEMP_DIR
    git clone https://aur.archlinux.org/${AUR_PKG}.git
    cd ${AUR_PKG} && makepkg -si --noconfirm && cd $TEMP_DIR
  fi
done < extra.list
