SPHINXOPTS	= -a -n
SPHINXBUILD = sphinx-build
SPHINXPROJ	= Bridge
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

handouts-open: handouts
	@open $(BUILDDIR)/handouts/index.html
