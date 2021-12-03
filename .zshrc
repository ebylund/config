zstyle ':completion:*:(cd|ls|ll|l|vim|cat):*' file-sort modification

ZSH_THEME="robbyrussellcustom"

export ZSH="/Users/erik/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh_custom"
export REQUESTS_CA_BUNDLE="$HOME/src/ps/certs/zscaler.pem"
export CURL_CA_BUNDLE="$HOME/src/ps/certs/zscaler.pem"
export NODE_EXTRA_CA_CERTS="$HOME/src/ps/certs/zscaler.pem"
export AWS_CA_BUNDLE="$HOME/src/ps/certs/zscaler.pem"

plugins=(
  git
  macos
  #dotenv
  wd
  zsh-autosuggestions
  zsh-completions
  sudo
)

source $ZSH/oh-my-zsh.sh

#  export NVM_DIR="$HOME/.nvm"
#  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

source /Users/erik/.zsh_custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export VOLTA_HOME="/Users/erik/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
