if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_cache_dir  = expand('$XDG_CACHE_HOME/dein')
let s:nvim_config_dir = expand('$XDG_CONFIG_HOME/nvim')
let s:dein_repo_dir   = expand(s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim')
let s:undo_dir        = expand(s:nvim_config_dir . '/undo')

if !isdirectory(s:dein_repo_dir)
  echo "Dein is not installed, install now!"

  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)
  call dein#add(s:dein_repo_dir)

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#load_toml(s:nvim_config_dir . '/dein.toml',      {'lazy': 0})
  call dein#load_toml(s:nvim_config_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if has('vim_starting')
  if dein#check_install()
    call dein#install()
  endif

  runtime! settings.vim
  runtime! mapping.vim
  runtime! filetypes.vim
endif

if has('persistent_undo')
  execute 'set undodir=' . fnamemodify(s:undo_dir, ':p')
  set undofile
endif

augroup AutoCommentOff
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END

function! OpenModifiableQF()
  cw
  set nowrap
endfunction

autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()
