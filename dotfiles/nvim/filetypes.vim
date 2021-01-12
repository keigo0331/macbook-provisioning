"ファイルタイプに関係する設定
augroup MyFileTypes
    autocmd!
    autocmd BufNewFile,BufRead,BufReadPre *.{md,mkd,mark*} set filetype=markdown
    autocmd BufRead,BufNewFile,BufReadPre *.coffee         set filetype=coffee
    autocmd BufRead,BufNewFile *.scss                      set filetype=scss.css
    autocmd BufRead,BufNewFile *.rb                        set filetype=ruby
    autocmd BufRead,BufNewFile *.slim                      set filetype=slim
    autocmd BufRead,BufNewFile *.fish                      set filetype=fish
    autocmd BufRead,BufNewFile *.tsx                       set filetype=typescript
    autocmd BufNewFile,BufRead,BufReadPre *.json           set filetype=json
    autocmd FileType scss set iskeyword+=-
augroup END
