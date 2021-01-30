#!/bin/sh
DOTFILES_PATH=$HOME/development/macbook-provisioning/dotfiles/

ln -sf $DOTFILES_PATH/.zshrc ~/.zshrc
ln -sf $DOTFILES_PATH/.tmux.conf ~/.tmux.conf
ln -sf $DOTFILES_PATH/.gitconfig ~/.gitconfig

mkdir -p $HOME/.config/nvim/plugins $HOME/.config/nvim/undo

NVIM_FILES=$(ls -aF $DOTFILES_PATH/nvim/ | grep -v /)

for file in ${NVIM_FILES[@]}
do
  ln -sf $DOTFILES_PATH/nvim/$file ~/.config/nvim/$file
done

NVIM_PLUGIN_FILES=$(ls -aF $DOTFILES_PATH/nvim/plugins | grep -v /)

for file in ${NVIM_PLUGIN_FILES[@]}
do
  ln -sf $DOTFILES_PATH/nvim/plugins/$file ~/.config/nvim/plugins/$file
done
