mkdir -p ~/.config/fish/functions ~/.config/nvim/plugins ~/.config/nvim/undo

ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/fish/fishfile ~/.config/fish/fishfile

set FISH_FUNCTIONS (ls -aF ~/dotfiles/fish/functions/ | grep -v /)
for file in $FISH_FUNCTIONS
  ln -s ~/dotfiles/fish/functions/$file ~/.config/fish/functions/$file
end

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

set NVIM_FILES (ls -aF ~/dotfiles/nvim/ | grep -v /)
for file in $NVIM_FILES
  ln -s ~/dotfiles/nvim/$file ~/.config/nvim/$file
end

set NVIM_PLUGIN_FILES (ls -aF ~/dotfiles/nvim/plugins | grep -v /)
for file in $NVIM_PLUGIN_FILES
  ln -s ~/dotfiles/nvim/plugins/$file ~/.config/nvim/plugins/$file
end
