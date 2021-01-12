set -gx LANG ja_JP.UTF-8

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache

set -gx DOTFILES $HOME/dotfiles
set -gx FISH_HOME $DOTFILES/fish

set -x PATH $HOME/.rbenv/bin $PATH

rbenv init - | source
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
