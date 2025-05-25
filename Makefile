.PHONY: all
all:
	@rsync -ah --exclude .git --exclude README.md .[^.]* ~/
