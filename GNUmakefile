OVAL_VERSION=5.11.2
NUMPROCS=$(shell nproc)
SAXON_LIB_DOWNLOAD_URL=https://repo1.maven.org/maven2/net/sf/saxon/Saxon-HE/10.9/Saxon-HE-10.9.jar
SAXON_LIB=rsrc/Saxon-HE.jar

DOCS=docs
OVAL_SRC=oval-schemas
OVAL_DOCS:=$(foreach schema, $(shell find $(OVAL_SRC) -name *.xsd ! -name xmldsig*), $(DOCS)/$(notdir $(basename $(schema))).html)

all: ${SAXON_LIB} oval_docs-${OVAL_VERSION}.zip schemas-${OVAL_VERSION}.zip

clean:
	rm -rf $(DOCS)
	rm -f schemas-*.zip
	rm -f oval_docs-*.zip
	rm -f ${SAXON_LIB}

${SAXON_LIB}:
	curl ${SAXON_LIB_DOWNLOAD_URL} --output ${SAXON_LIB}

schemas-${OVAL_VERSION}.zip:
	zip -j schemas-${OVAL_VERSION}.zip ${OVAL_SRC}/*.xsd
	
oval_docs-${OVAL_VERSION}.zip: $(DOCS)/index.html ovaldocs
	zip -j oval_docs-${OVAL_VERSION}.zip ${OVAL_DOCS} $(DOCS)/index.html
	
$(DOCS)/index.html: rsrc/index.html
	mkdir -p $(DOCS)
	sed 's/\[VERSION\]/$(OVAL_VERSION)/g' $< > $@

ovaldocs:
	$(MAKE) -j$(NUMPROCS) $(OVAL_DOCS)

$(DOCS)/%.html: $(OVAL_SRC)/%.xsd
	java -jar $(SAXON_LIB) -s:$< -xsl:tools/oval_xsd2html.xsl -o:$@
