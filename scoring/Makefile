###############################################################################
# Make/Upload Rithm lectures
#
# This is a "Makefile"; it contains REAL TAB CHARACTERS and they MUST STAY
# as tabs. Your editor may (stupidly) try to convert these to spaces. That will
# break everything.


SPHINXOPTS	= -c .. -a -n

NAME          = $(shell basename $(shell pwd))
export CURRIC_NAME=$(NAME)
ifneq ($(wildcard demo),)
	export DEMO_PATH=../$(NAME)-demo.zip
endif	

# These things will never get zipped up, no matter how deep they
# may be in the tree of things that we may try to zip up
#
# For safety, we ignore all files starting with a dot. Note
# that this will prevent us from giving students demos or solutions
# with '.gitignore' or '.env' or such.

NEVER_ZIP = --exclude '*.rst' \
			--exclude '.[a-zA-Z0-9_]*' \
			--exclude 'venv' \
			--exclude '__pycache__' \
			--exclude 'node_modules' \
			--exclude 'meta' \
			--exclude 'rubric' \
			--exclude 'Makefile' \
			--exclude 'Untitled*.ipynb' \
			--exclude 'build' \
			--exclude '_build'



################################################################################
# You should probably not touch anything below here


SPHINXBUILD = sphinx-build
SPHINXPROJ	= Demo
SOURCEDIR	= .
BUILDDIR    = _build

# Keep this first
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


################################################################################
# Glide-specific actions


# Make slides & open in browser (convenience)

revealjs-open: revealjs
	@open $(BUILDDIR)/revealjs/index.html

WATCHMEDO = watchmedo

# Make handouts & open in browser, then watch the filesystem for changes

watch-revealjs: revealjs-open
	@$(WATCHMEDO) shell-command \
			--patterns="*.rst;./demo/*" \
			--ignore-pattern='_build/*' \
			--recursive \
			--command='make revealjs-open; echo "waiting for changes"'


# Make handouts & open in browser (convenience)

handouts-open: handouts
	@open $(BUILDDIR)/handouts/index.html

# Make handouts & open in browser, then watch the filesystem for changes

watch-handouts: handouts-open
	@$(WATCHMEDO) shell-command \
			--patterns="*.rst;./demo/*" \
			--ignore-pattern='_build/*' \
			--recursive \
			--command='make handouts-open; echo "waiting for changes"'


# Zip up demo folder, if present (warns if no demo present)

demozip:
ifneq ($(wildcard demo),)
	@rm -rf /tmp/demo /tmp/$(NAME)-demo
	@tar -cL $(NEVER_ZIP) demo | tar -xC /tmp
	@mv /tmp/demo /tmp/$(NAME)-demo
	cd /tmp && zip -r $(NAME)-demo.zip $(NAME)-demo
else
	@echo "\n\nWARNING: no demo folder found; most lectures should have one\n\n"
endif


# Uploads slides --- see "upload", below

revealjs-upload: revealjs
	ssh $(SSH_HOST) rm -rf $(SSH_DIR_SLIDE)$(NAME)
	scp -r _build/revealjs $(SSH_HOST):$(SSH_DIR_SLIDE)$(NAME)
	open $(SSH_URL_SLIDE)$(NAME)


# Uploads handouts --- see "upload", below

handouts-upload: handouts demozip
	ssh $(SSH_HOST) rm -rf $(SSH_DIR)$(NAME)
	scp -r _build/handouts $(SSH_HOST):$(SSH_DIR)$(NAME)
	if [ -d demo ]; then scp /tmp/$(NAME)-demo.zip $(SSH_HOST):$(SSH_DIR); fi
	open $(SSH_URL)$(NAME)


# Upload everything & tidy up temp files --- this is what you want for upload

upload: revealjs-upload handouts-upload
	rm -f /tmp/$(NAME).zip
	rm -rf $(BUILDDIR)/*


list:
	$(info upload		build and upload all lecture material to the production server)
	$(info handouts-open		build and open the index file locally)
	$(info watch-handouts		build and open the index every time there is a file change)
	$(info revealjs-open		build and open revealjs slides locally)
	$(info watch-revealjs		buid and open the revealjs slides every time there is a file change)

