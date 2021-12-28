index.html: index.md
	cmark -t xml index.md | \
	xsltproc \
		--novalid \
		--nonet \
		--stringparam generate.toc no \
		--stringparam highlight no \
		xmark.xsl - > index.html

clean:
	rm index.html
