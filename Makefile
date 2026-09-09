HUGO = hugo
PORT = 1313

server:
	$(HUGO) server -D --port $(PORT)

build: clean
	$(HUGO) --gc --minify

clean:
	rm -rf public resources .hugo_build.lock

update-theme:
	git submodule update --remote --merge themes/FixIt

help:
	@echo "server        - run the Hugo dev server"
	@echo "build         - production build into public/"
	@echo "clean         - remove build artifacts"
	@echo "update-theme  - pull the latest FixIt theme commit"

.PHONY: help server build clean update-theme new
