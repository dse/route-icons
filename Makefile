LOCAL_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/local/\1.svg:g')

EXPRESS_ROUTE_ICONS = \
	$(shell seq 1 99 | sed -r 's:(.*):target/route-icons/express/\1.svg:g')

OTHER_PREREQUISITES = Makefile

default: dirs $(LOCAL_ROUTE_ICONS) $(EXPRESS_ROUTE_ICONS)

.PHONY: dirs
dirs:
	mkdir -p target/route-icons/local   || true
	mkdir -p target/route-icons/express || true

$(LOCAL_ROUTE_ICONS): target/route-icons/local/%.svg: src/local-route-00.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

$(EXPRESS_ROUTE_ICONS): target/route-icons/express/%.svg: src/express-route-00.svg $(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:$*:g' < $< > $@.tmp
	mv $@.tmp $@

