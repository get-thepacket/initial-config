#!/bin/sh

pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Add zsh-autosuggestions in plugin in .zshrc"

ssh-keygen -t ed25519 -C "lakshyab.1999@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
echo "Now run, gpg --armor --export 'sec value'"
echo "Then run, git config --global user.signingkey 'sec value'"
