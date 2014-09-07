WHITE_ON_BLACK_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-black/\1.svg:g')
WHITE_ON_BLUE_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-blue/\1.svg:g')
WHITE_ON_RED_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-red/\1.svg:g')
BLACK_ON_YELLOW_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/black-on-yellow/\1.svg:g')
BLUE_ON_WHITE_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/blue-on-white/\1.svg:g')
WHITE_ON_ORANGE_SVG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-orange/\1.svg:g')

WHITE_ON_BLACK_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-black/\1.png:g')
WHITE_ON_BLUE_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-blue/\1.png:g')
WHITE_ON_RED_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-red/\1.png:g')
BLACK_ON_YELLOW_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/black-on-yellow/\1.png:g')
BLUE_ON_WHITE_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/blue-on-white/\1.png:g')
WHITE_ON_ORANGE_PNG_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-orange/\1.png:g')

OTHER_PREREQUISITES = dirs Makefile

.PHONY: default
default: dirs \
	$(WHITE_ON_BLACK_SVG_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_PNG_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_ROUTE_ICONS)

.PHONY: svgs
svgs: dirs \
	$(WHITE_ON_BLACK_SVG_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_ROUTE_ICONS)

.PHONY: pngs
pngs: dirs \
	$(WHITE_ON_BLACK_PNG_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_ROUTE_ICONS)

.PHONY: dirs
dirs:
	mkdir -p target/route-icons/svg/white-on-black || true
	mkdir -p target/route-icons/svg/white-on-blue || true
	mkdir -p target/route-icons/svg/white-on-red || true
	mkdir -p target/route-icons/svg/black-on-yellow || true
	mkdir -p target/route-icons/svg/blue-on-white || true
	mkdir -p target/route-icons/svg/white-on-orange || true
	mkdir -p target/route-icons/png/white-on-black || true
	mkdir -p target/route-icons/png/white-on-blue || true
	mkdir -p target/route-icons/png/white-on-red || true
	mkdir -p target/route-icons/png/black-on-yellow || true
	mkdir -p target/route-icons/png/blue-on-white || true
	mkdir -p target/route-icons/png/white-on-orange || true

-include ~/lib/make/common.mk

$(WHITE_ON_BLACK_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-black/%.svg: src/white-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(WHITE_ON_BLUE_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-blue/%.svg: src/white-on-blue.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(WHITE_ON_RED_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-red/%.svg: src/white-on-red.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(BLACK_ON_YELLOW_SVG_ROUTE_ICONS): target/route-icons/svg/black-on-yellow/%.svg: src/black-on-yellow.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(BLUE_ON_WHITE_SVG_ROUTE_ICONS): target/route-icons/svg/blue-on-white/%.svg: src/blue-on-white.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(WHITE_ON_ORANGE_SVG_ROUTE_ICONS): target/route-icons/svg/white-on-orange/%.svg: src/white-on-orange.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

target/route-icons/png/white-on-black/%.png: target/route-icons/svg/white-on-black/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/white-on-blue/%.png: target/route-icons/svg/white-on-blue/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/white-on-red/%.png: target/route-icons/svg/white-on-red/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/black-on-yellow/%.png: target/route-icons/svg/black-on-yellow/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/blue-on-white/%.png: target/route-icons/svg/blue-on-white/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

target/route-icons/png/white-on-orange/%.png: target/route-icons/svg/white-on-orange/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	mv $@.tmp.png $@

