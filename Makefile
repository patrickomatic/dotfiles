all: fish git psql tmux vim

.PHONY: fish
fish: $${HOME}/.config/fish \
	$${HOME}/.config/fish/config.fish \
	$${HOME}/.config/fish/functions/fish_prompt.fish
# TODO: run a command to make sure it's chsh fish?

.PHONY: git
git: $${HOME}/.config/git \
	$${HOME}/.config/git/ignore \
	$${HOME}/.config/git/config

.PHONY: psql
psql: $${HOME}/.psqlrc

.PHONY: tmux
tmux: $${HOME}/.tmux.conf

.PHONY: vim
vim: $${HOME}/.vimrc

$${HOME}/.config/fish:
	mkdir -p $@

$${HOME}/.config/git:
	mkdir -p $@

$${HOME}/.%: .%
	cp $^ $@
