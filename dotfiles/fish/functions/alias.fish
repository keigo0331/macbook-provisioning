alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'
alias mkdiri='mkdir -p'

alias la='ls -a'
alias ll='ls -l'

alias nv='nvim'

alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'

alias d-c='docker-compose'
alias d-ck='docker-compose kill'
alias d-cku='docker-compose kill; docker-compose up'
alias d-cu='docker-compose up'

alias d-cra='docker-compose run application'

alias dama='docker attach mamanokoapp_application_1'

alias drmc='docker ps -a -q | xargs docker rm'
alias drmi='docker images -a -q | xargs docker rmi'

alias drmv="docker volume rm (docker volume ls -qf dangling=true)"

alias dss='docker-sync start'
alias dsc='docker-sync clean'

alias cht='COMPOSE_HTTP_TIMEOUT=200'
