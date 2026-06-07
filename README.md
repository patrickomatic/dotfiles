# dotfiles

Configuration files symlinked into `$HOME`.

## Install

```sh
git clone git@github.com:patrickomatic/dotfiles.git ~/dotfiles
cd ~/dotfiles
make
```

This creates symlinks from your home directory into the repo. Existing files are backed up with a `.bak` extension before linking.

## What's included

- **Shell**: zsh, bash
- **Editors**: Neovim (LazyVim), Vim
- **Terminal**: Alacritty, Tmux
- **Git**: aliases, global ignore
- **Tools**: mise, GitHub CLI, psql
