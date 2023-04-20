all: coc fish git psql tmux vim

.PHONY: alacritty
alacritty: $${HOME}/.config/alacritty \
	$${HOME}/.config/alacritty/alacritty.yml

.PHONY: coc
coc: $${HOME}/.config/coc \
	$${HOME}/.config/coc/settings.json

.PHONY: fish
fish: $${HOME}/.config/fish \
	$${HOME}/.config/fish/config.fish \
	$${HOME}/.config/fish/functions/fish_prompt.fish

.PHONY: git
git: $${HOME}/.config/git \
	$${HOME}/.config/git/ignore \
	$${HOME}/.config/git/config

.PHONY: psql
psql: $${HOME}/.psqlrc

.PHONY: tmux
tmux: $${HOME}/.tmux.conf

.PHONY: vim
vim: $${HOME}/.vimrc \
	$${HOME}/.config/nvim \
	$${HOME}/.config/nvim/init.vim

$${HOME}/.config/alacritty:
	mkdir -p $@

$${HOME}/.config/coc:
	mkdir -p $@

$${HOME}/.config/fish:
	mkdir -p $@

$${HOME}/.config/git:
	mkdir -p $@

$${HOME}/.config/nvim:
	mkdir -p $@

$${HOME}/.%: .%
	cp $^ $@
