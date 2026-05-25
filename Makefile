.PHONY: all dry-run
all:
	@find . -maxdepth 1 -name '.[^.]*' ! -name '.git' ! -name '.config' | while read f; do \
		ln -sfn "$(PWD)/$$f" "$(HOME)/$$f"; \
	done
	@mkdir -p "$(HOME)/.config"
	@find .config -mindepth 1 -maxdepth 1 | while read d; do \
		target="$(HOME)/$$d"; \
		[ -d "$$target" ] && [ ! -L "$$target" ] && rm -rf "$$target"; \
		ln -sfn "$(PWD)/$$d" "$$target"; \
	done

dry-run:
	@echo "Would create the following symlinks:"
	@find . -maxdepth 1 -name '.[^.]*' ! -name '.git' ! -name '.config' | while read f; do \
		echo "  $(HOME)/$$f -> $(PWD)/$$f"; \
	done
	@find .config -mindepth 1 -maxdepth 1 | while read d; do \
		echo "  $(HOME)/$$d -> $(PWD)/$$d"; \
	done
