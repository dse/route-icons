WHITE_ON_BLACK_SVG_ROUTE_ICONS  = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/svg/white-on-black/\1.svg:g')
WHITE_ON_RED_SVG_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/svg/white-on-red/\1.svg:g')
BLACK_ON_YELLOW_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/svg/black-on-yellow/\1.svg:g')

WHITE_ON_BLACK_PNG_ROUTE_ICONS  = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/png/white-on-black/\1.png:g')
WHITE_ON_RED_PNG_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/png/white-on-red/\1.png:g')
BLACK_ON_YELLOW_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/png/black-on-yellow/\1.png:g')

OTHER_PREREQUISITES = dirs Makefile

.PHONY: default
default: dirs \
	$(WHITE_ON_BLACK_SVG_ROUTE_ICONS)  \
	$(WHITE_ON_RED_SVG_ROUTE_ICONS)    \
	$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_PNG_ROUTE_ICONS)  \
	$(WHITE_ON_RED_PNG_ROUTE_ICONS)    \
	$(BLACK_ON_YELLOW_PNG_ROUTE_ICONS)

.PHONY: svgs
svgs: dirs \
	$(WHITE_ON_BLACK_SVG_ROUTE_ICONS)  \
	$(WHITE_ON_RED_SVG_ROUTE_ICONS)    \
	$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS)

.PHONY: pngs
pngs: dirs \
	$(WHITE_ON_BLACK_PNG_ROUTE_ICONS)  \
	$(WHITE_ON_RED_PNG_ROUTE_ICONS)    \
	$(BLACK_ON_YELLOW_PNG_ROUTE_ICONS)

.PHONY: dirs
dirs:
	mkdir -p target/route-icons/svg/white-on-black  || true
	mkdir -p target/route-icons/svg/white-on-red    || true
	mkdir -p target/route-icons/svg/black-on-yellow || true
	mkdir -p target/route-icons/png/white-on-black  || true
	mkdir -p target/route-icons/png/white-on-red    || true
	mkdir -p target/route-icons/png/black-on-yellow || true

-include ~/lib/make/common.mk

$(WHITE_ON_BLACK_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-black/%.svg: src/white-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(WHITE_ON_RED_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-red/%.svg: src/white-on-red.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS): target/route-icons/svg/black-on-yellow/%.svg: src/black-on-yellow.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

target/route-icons/png/white-on-black/%.png: target/route-icons/svg/white-on-black/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/white-on-red/%.png: target/route-icons/svg/white-on-red/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/black-on-yellow/%.png: target/route-icons/svg/black-on-yellow/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

