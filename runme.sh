#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf -L "https://install.determinate.systems/nix" | sh -s -- install
nix run  --extra-experimental-features 'nix-command flakes' nix-darwin -- switch --flake .

rm -i "$HOME/.zshrc"
cp zshrc "$HOME/.zshrc"

curl -fsSL "https://get.jetify.com/devbox" | bash

if [ -e "/run/current-system/Applications/Emacs.app" ]; then
   ln -s "/run/current-system/Applications/Emacs.app" "/Applications/Emacs.app"
fi
