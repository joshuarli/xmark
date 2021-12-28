index.html: index.md
	cmark -t xml index.md | \
	xsltproc \
		--novalid \
		--nonet \
		--stringparam generate.toc no \
		xmark.xsl - > index.html

clean:
	rm index.html
