all: $${HOME}/.config/git/ignore $${HOME}/.config/git/config $${HOME}/.zshrc $${HOME}/.vimrc $${HOME}/.gvimrc $${HOME}/.psqlrc $${HOME}/.tmux.conf

$${HOME}/.config/git/ignore: .config/git/ignore
	mkdir -p $${HOME}/.config/git
	cp $^ $@

$${HOME}/.config/git/config: .config/git/config
	mkdir -p $${HOME}/.config/git
	cp $^ $@

$${HOME}/.zshrc: .zshrc
	cp $^ $@

$${HOME}/.vimrc: .vimrc
	cp $^ $@

$${HOME}/.gvimrc: .gvimrc
	cp $^ $@

$${HOME}/.psqlrc: .psqlrc
	cp $^ $@

$${HOME}/.tmux.conf: .tmux.conf
	cp $^ $@
