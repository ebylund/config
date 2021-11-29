######################
### Custom Aliases ###
######################

alias lll='ls -lahr'
alias zalias='vim ~/.zsh_custom/aliases.zsh; source ~/.zshrc'
alias zfunc='vim ~/.zsh_custom/funcs.zsh; source ~/.zshrc'
alias serve='python -m SimpleHTTPServer 7890'
alias yw="yarn watch"
alias ysd="yarn start:dev"
alias ys="yarn start"
alias ms="mob start 10"
alias zsource="source ~/.zshrc"
alias zsrc="source ~/.zshrc"
alias vsource="source ~/.vimrc"
alias zrc="vim ~/.zshrc; source ~/.zshrc;"
alias vrc="vim ~/.vimrc"


################
## Navigation ##
################

alias paas="cd ~/src/ps/repos/paas-api"
alias repl="cd ~/src/ps/examples/node-repl"
alias katas="cd ~/src/katas"


####################
## Docker Aliases ##
####################

alias dps="docker ps -a"
alias dcps="docker-compose ps"
alias dup="docker-compose up -d"
alias upd="docker-compose up -d"
alias dnv="docker-compose down -v"
alias dc="docker-compose"
#alias dstop="docker stop $(docker ps -a -q)"
#alias drm="docker rm $(docker ps -a -q)"


###################
## PGCLI Aliases ##
###################

alias pgprod="pgcli -D PRODUCTION!!!"
alias pgproda="pgcli -D AURORA_PRODUCTION!!!"
alias pgprodaro="pgcli -D AURORA_PRODUCTION_RO"
alias pgstage="pgcli -D staging"
alias pgstagea="pgcli -D aurora-staging"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"


#########
## Git ##
#########

alias addp="git add -p"
alias gcm="git commit -S -m"
alias goneline="git log $1 --pretty --oneline"
alias gleader="git shortlog -sn"
alias gpretty="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gday='git diff --shortstat "@{0 day ago}"'


alias fig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias fst='fig status'
