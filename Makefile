SUBMODULE_DIR = themes/ananke


default: sm-reset

all: build


h help:
	@grep '^[a-z]' Makefile


sm-setup:
	git submodule init
	git submodule update

sm-reset:
	git submodule update --force

sm-pull:
	git submodule update --rebase --remote
	git status $(SUBMODULE_DIR) --short

sm-commit:
	git commit $(SUBMODULE_DIR)


s serve:
	hugo server

build:
	hugo --gc --minify
