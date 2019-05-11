allfiles = $(shell cd src && find * -type f)
dist = dist
installdir = ~/.themes

.PHONY: dist install clean test

#install: ${dist}
#	cp -r ${dist}/* ~/.themes
install: $(patsubst %,${installdir}/Altair/%,${allfiles})

${installdir}/Altair/%: ${dist}/Altair/%
	@mkdir -p ${dist}/Altair/cinnamon
	cp $< $@

dist: $(patsubst %,${dist}/Altair/%,${allfiles})

# TODO Build cinnamon directory dynamically
${dist}/Altair/%: src/%
	@mkdir -p ${dist}/Altair/cinnamon
	cp $< $@

clean:
	rm -rf ${dist}

test:
	echo "${allfiles}"
