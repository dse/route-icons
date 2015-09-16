MV = /bin/mv -f

WHITE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS  = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-black/\1.svg:g')
WHITE_ON_ORANGE_SVG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-orange/\1.svg:g')
WHITE_ON_PINK_SVG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-pink/\1.svg:g')
YELLOW_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/yellow-on-black/\1.svg:g')
BLUE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/blue-on-black/\1.svg:g')
WHITE_ON_BLUE_SVG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-blue/\1.svg:g')
WHITE_ON_RED_SVG_2DIGIT_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-red/\1.svg:g')
BLACK_ON_YELLOW_SVG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/black-on-yellow/\1.svg:g')
BLUE_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/blue-on-white/\1.svg:g')
RED_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/svg/red-on-white/\1.svg:g')

WHITE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS  = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-black/\1.png:g')
WHITE_ON_ORANGE_PNG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-orange/\1.png:g')
WHITE_ON_PINK_PNG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-pink/\1.png:g')
YELLOW_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/yellow-on-black/\1.png:g')
BLUE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/blue-on-black/\1.png:g')
WHITE_ON_BLUE_PNG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-blue/\1.png:g')
WHITE_ON_RED_PNG_2DIGIT_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-red/\1.png:g')
BLACK_ON_YELLOW_PNG_2DIGIT_ROUTE_ICONS = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/black-on-yellow/\1.png:g')
BLUE_ON_WHITE_PNG_2DIGIT_ROUTE_ICONS   = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/blue-on-white/\1.png:g')
RED_ON_WHITE_PNG_2DIGIT_ROUTE_ICONS    = $(shell (seq 0 99; echo 00; echo XX) | sed 's:\(.*\):target/route-icons/png/red-on-white/\1.png:g')

WHITE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS  = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-black/\1.svg:g')
WHITE_ON_ORANGE_SVG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-orange/\1.svg:g')
WHITE_ON_PINK_SVG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-pink/\1.svg:g')
YELLOW_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/yellow-on-black/\1.svg:g')
BLUE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/blue-on-black/\1.svg:g')
WHITE_ON_BLUE_SVG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-blue/\1.svg:g')
WHITE_ON_RED_SVG_3DIGIT_ROUTE_ICONS    = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/white-on-red/\1.svg:g')
BLACK_ON_YELLOW_SVG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/black-on-yellow/\1.svg:g')
BLUE_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/blue-on-white/\1.svg:g')
RED_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS    = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/svg/red-on-white/\1.svg:g')

WHITE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS  = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-black/\1.png:g')
WHITE_ON_ORANGE_PNG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-orange/\1.png:g')
WHITE_ON_PINK_PNG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-pink/\1.png:g')
YELLOW_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/yellow-on-black/\1.png:g')
BLUE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/blue-on-black/\1.png:g')
WHITE_ON_BLUE_PNG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-blue/\1.png:g')
WHITE_ON_RED_PNG_3DIGIT_ROUTE_ICONS    = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/white-on-red/\1.png:g')
BLACK_ON_YELLOW_PNG_3DIGIT_ROUTE_ICONS = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/black-on-yellow/\1.png:g')
BLUE_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS   = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/blue-on-white/\1.png:g')
RED_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS    = $(shell (seq 100 199; echo 000; echo XX) | sed 's:\(.*\):target/route-icons/png/red-on-white/\1.png:g')

OTHER_PREREQUISITES = dirs Makefile

.PHONY: default
default: dirs \
	$(WHITE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_SVG_2DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_PNG_2DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_2DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_SVG_3DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_PNG_3DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS)

.PHONY: svgs
svgs: dirs \
	$(WHITE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_SVG_2DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_SVG_3DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_SVG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_SVG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS)

.PHONY: pngs
pngs: dirs \
	$(WHITE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_PNG_2DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_2DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_2DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_2DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_ORANGE_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_PINK_PNG_3DIGIT_ROUTE_ICONS) \
	$(YELLOW_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_BLACK_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_BLUE_PNG_3DIGIT_ROUTE_ICONS) \
	$(WHITE_ON_RED_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLACK_ON_YELLOW_PNG_3DIGIT_ROUTE_ICONS) \
	$(BLUE_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS) \
	$(RED_ON_WHITE_PNG_3DIGIT_ROUTE_ICONS)

.PHONY: dirs
dirs:
	mkdir -p target/route-icons/svg/white-on-black || true
	mkdir -p target/route-icons/svg/white-on-orange || true
	mkdir -p target/route-icons/svg/white-on-pink || true
	mkdir -p target/route-icons/svg/yellow-on-black || true
	mkdir -p target/route-icons/svg/blue-on-black || true
	mkdir -p target/route-icons/svg/white-on-blue || true
	mkdir -p target/route-icons/svg/white-on-red || true
	mkdir -p target/route-icons/svg/black-on-yellow || true
	mkdir -p target/route-icons/svg/blue-on-white || true
	mkdir -p target/route-icons/svg/red-on-white || true
	mkdir -p target/route-icons/png/white-on-black || true
	mkdir -p target/route-icons/png/white-on-orange || true
	mkdir -p target/route-icons/png/white-on-pink || true
	mkdir -p target/route-icons/png/yellow-on-black || true
	mkdir -p target/route-icons/png/blue-on-black || true
	mkdir -p target/route-icons/png/white-on-blue || true
	mkdir -p target/route-icons/png/white-on-red || true
	mkdir -p target/route-icons/png/black-on-yellow || true
	mkdir -p target/route-icons/png/blue-on-white || true
	mkdir -p target/route-icons/png/red-on-white || true

-include ~/lib/make/common.mk

$(WHITE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-black/%.svg: src/2-digit/white-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_ORANGE_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-orange/%.svg: src/2-digit/white-on-orange.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_PINK_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-pink/%.svg: src/2-digit/white-on-pink.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(YELLOW_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/yellow-on-black/%.svg: src/2-digit/yellow-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLUE_ON_BLACK_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/blue-on-black/%.svg: src/2-digit/blue-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_BLUE_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-blue/%.svg: src/2-digit/white-on-blue.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_RED_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-red/%.svg: src/2-digit/white-on-red.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLACK_ON_YELLOW_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/black-on-yellow/%.svg: src/2-digit/black-on-yellow.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLUE_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/blue-on-white/%.svg: src/2-digit/blue-on-white.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(RED_ON_WHITE_SVG_2DIGIT_ROUTE_ICONS): target/route-icons/svg/red-on-white/%.svg: src/2-digit/red-on-white.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-black/%.svg: src/3-digit/white-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_ORANGE_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-orange/%.svg: src/3-digit/white-on-orange.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_PINK_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-pink/%.svg: src/3-digit/white-on-pink.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(YELLOW_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/yellow-on-black/%.svg: src/3-digit/yellow-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLUE_ON_BLACK_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/blue-on-black/%.svg: src/3-digit/blue-on-black.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_BLUE_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-blue/%.svg: src/3-digit/white-on-blue.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(WHITE_ON_RED_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/white-on-red/%.svg: src/3-digit/white-on-red.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLACK_ON_YELLOW_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/black-on-yellow/%.svg: src/3-digit/black-on-yellow.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(BLUE_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/blue-on-white/%.svg: src/3-digit/blue-on-white.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

$(RED_ON_WHITE_SVG_3DIGIT_ROUTE_ICONS): target/route-icons/svg/red-on-white/%.svg: src/3-digit/red-on-white.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	$(MV) $@.tmp $@

target/route-icons/png/white-on-black/%.png: target/route-icons/svg/white-on-black/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/white-on-orange/%.png: target/route-icons/svg/white-on-orange/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/white-on-pink/%.png: target/route-icons/svg/white-on-pink/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/yellow-on-black/%.png: target/route-icons/svg/yellow-on-black/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/blue-on-black/%.png: target/route-icons/svg/blue-on-black/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/white-on-blue/%.png: target/route-icons/svg/white-on-blue/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/white-on-red/%.png: target/route-icons/svg/white-on-red/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/black-on-yellow/%.png: target/route-icons/svg/black-on-yellow/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/blue-on-white/%.png: target/route-icons/svg/blue-on-white/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

target/route-icons/png/red-on-white/%.png: target/route-icons/svg/red-on-white/%.svg $(OTHER_PREREQUISITES)
	$(INKSCAPE) --without-gui --export-png "$@.tmp.png" $<
	$(MV) $@.tmp.png $@

