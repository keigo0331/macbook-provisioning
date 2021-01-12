#!/bin/sh
FILES=$(ls -aF ~/dotfiles/symbolic_links/ | grep -v /)

for file in ${FILES[@]}
do
  if "$file" = "config.fish"
  then
    ln -s $HOME/dotfiles/config.fish $HOME/.config/fish/config.fish
  else
    ln -s ~/dotfiles/$file $HOME/$file
  fi
done
