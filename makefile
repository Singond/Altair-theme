dist=dist

install: ${dist}
	cp -r ${dist}/* ~/.themes

dist: src
	mkdir -p ${dist}
	cp -r src "${dist}/Altair"

clean:
	rm -rf ${dist}
