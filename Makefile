PAGES := $(patsubst %.md,%.html,$(wildcard *.md ./**/*.md))
all: $(PAGES)

%.html: %.md
	cmark -t xml $< | \
	xsltproc --novalid --nonet \
	--stringparam generate.toc no \
	xmark.xsl - > $@

clean:
	fd -e html -x rm {}
