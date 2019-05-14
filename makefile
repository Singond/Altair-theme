allfiles = $(shell cd src && find * -type f)
dist = dist
installdir = ~/.themes

.PHONY: dist install clean test

install: $(patsubst %,${installdir}/Altair/%,${allfiles})

${installdir}/Altair/%: ${dist}/Altair/%
	@mkdir -p $(dir $@)
	cp $< $@

dist: $(patsubst %,${dist}/Altair/%,${allfiles})

${dist}/Altair/%: src/%
	@mkdir -p $(dir $@)
	cp $< $@

clean:
	rm -rf ${dist}

test:
	echo "${allfiles}"
