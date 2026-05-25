source "$HOME/.rocket-money-config"

alias g="git"
alias p="pnpm"
alias c="claude --dangerously-skip-permissions"
alias ghcp="mise x node@22 -- copilot --allow-all-tools"
alias swc="pnpm swc-node"
alias chat="pnpm chat --phone +13017686537"

export PROMPT="[%?] %~ %% "
export EDITOR=vi
export NODE_OPTIONS="--max-old-space-size=16000"
export PATH="$HOME/bin:$PATH"

export AWS_PROFILE='TB-engineering-844510532488'

set -o vi
