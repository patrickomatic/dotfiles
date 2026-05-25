DOTFILES := $(shell pwd)

LINKS := \
	.bash_profile \
	.bashrc \
	.psqlrc \
	.vimrc \
	.zshrc \
	.config/alacritty \
	.config/gh \
	.config/git \
	.config/mise \
	.config/nvim \
	.config/tmux

.PHONY: all
all:
	@mkdir -p ~/.config
	@for link in $(LINKS); do \
		target="$(DOTFILES)/$$link"; \
		dest="$$HOME/$$link"; \
		if [ -e "$$dest" ] && [ ! -L "$$dest" ]; then \
			echo "backing up $$dest -> $$dest.bak"; \
			mv "$$dest" "$$dest.bak"; \
		fi; \
		ln -sfn "$$target" "$$dest"; \
		echo "$$dest -> $$target"; \
	done
