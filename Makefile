all: $${HOME}/.config/git/ignore $${HOME}/.config/git/config $${HOME}/.zshrc $${HOME}/.vimrc $${HOME}/.gvimrc

$${HOME}/.config/git/ignore: .config/git/ignore
	cp $^ $@

$${HOME}/.config/git/config: .config/git/config
	cp $^ $@

$${HOME}/.zshrc: .zshrc
	cp $^ $@

$${HOME}/.vimrc: .vimrc
	cp $^ $@

$${HOME}/.gvimrc: .gvimrc
	cp $^ $@
