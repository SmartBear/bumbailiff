TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

BUILDDIR:=./tmp

check: $(TESTS:tests/%.sh=$(BUILDDIR)/tests/%.diff)
	@echo Success

$(BUILDDIR)/tests/%.diff: $(BUILDDIR)/tests/%.output tests/%.expected
	@diff --side-by-side $^ > $@ || ! cat $@

$(BUILDDIR)/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
	@mkdir -p $(dir $@)/$*
	@(cd $(dir $@)/$* && \
	  PATH=/bin:/usr/bin:$(abspath src):$(abspath tests) \
	  VISUAL= \
	  EDITOR= \
	  PS4='+ ' \
	    /bin/sh -v $(abspath $<) > $(abspath $@) 2>&1) || ! cat $@

clean:
	rm -rf $(BUILDDIR)

.PHONY: all clean
.PRECIOUS: $(BUILDDIR)/tests/%.output
.DELETE_ON_ERROR: