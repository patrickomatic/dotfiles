export EDITOR="vim -f"
export PSQL_EDITOR="vim"
export GO_HOME=/usr/local/go
export PATH="$JAVA_HOME/bin:$GO_HOME/bin:$HOME/bin:$PATH"

# otherwise vim colorschemes won't work in tmux
alias tmux="TERM=screen-256color-bce tmux"

[ -f ~/.zsh.env ] && source ~/.zsh.env

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Google Cloud SDK
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

## node 
export NODE_OPTIONS="--max-old-space-size=4096"
export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# automatically load NVM if there's a .nvmrc file
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
