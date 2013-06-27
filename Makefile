LOCAL_SVG_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/svg/local/\1.svg:g')

EXPRESS_SVG_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/svg/express/\1.svg:g')

LOCAL_PNG_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/png/local/\1.png:g')

EXPRESS_PNG_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/png/express/\1.png:g')

OTHER_PREREQUISITES = dirs Makefile

.PHONY: default
default: dirs $(LOCAL_SVG_ROUTE_ICONS) $(EXPRESS_SVG_ROUTE_ICONS) $(LOCAL_PNG_ROUTE_ICONS) $(EXPRESS_PNG_ROUTE_ICONS)

.PHONY: svgs
svgs: dirs $(LOCAL_SVG_ROUTE_ICONS) $(EXPRESS_SVG_ROUTE_ICONS)

.PHONY: pngs
pngs: dirs $(LOCAL_PNG_ROUTE_ICONS) $(EXPRESS_PNG_ROUTE_ICONS)

.PHONY: dirs
dirs:
	mkdir -p target/route-icons/svg/local   || true
	mkdir -p target/route-icons/svg/express || true
	mkdir -p target/route-icons/png/local   || true
	mkdir -p target/route-icons/png/express || true

-include ~/lib/make/common.mk

$(LOCAL_SVG_ROUTE_ICONS): target/route-icons/svg/local/%.svg: src/local-route-00.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(EXPRESS_SVG_ROUTE_ICONS): target/route-icons/svg/express/%.svg: src/express-route-00.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

target/route-icons/png/local/%.png: target/route-icons/svg/local/%.svg $(OTHER_PREREQUISITES)
#	convert -background none $< $@.tmp.png
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/express/%.png: target/route-icons/svg/express/%.svg $(OTHER_PREREQUISITES)
#	convert -background none $< $@.tmp.png
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@


