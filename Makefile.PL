#!/usr/bin/perl
use warnings;
use strict;

my $makefile = "Makefile";
open(STDOUT, ">", "$makefile") or die("Cannot write $makefile: $!\n");

my @schemes = (
    { foreground => "white",  background => "black",  fg_hex => "#ffffff", bg_hex => "#000000", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "white",  background => "orange", fg_hex => "#ffffff", bg_hex => "#ed8000", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "white",  background => "pink",   fg_hex => "#ffffff", bg_hex => "#ff6666", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "yellow", background => "black",  fg_hex => "#ffff00", bg_hex => "#000000", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "blue",   background => "black",  fg_hex => "#ddddff", bg_hex => "#000000", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "white",  background => "blue",   fg_hex => "#ffffff", bg_hex => "#0000ff", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "white",  background => "red",    fg_hex => "#ffffff", bg_hex => "#ff0000", font_weight => "bold"  , font_family =>  "Helvetica,Swis721 BT Bold",                         },
    { foreground => "black",  background => "yellow", fg_hex => "#000000", bg_hex => "#ffff00", font_weight => "normal", font_family =>  "Helvetica,Swis721 BT"     , stroke_hex => "#000000" },
    { foreground => "blue",   background => "white",  fg_hex => "#0000ff", bg_hex => "#ffffff", font_weight => "normal", font_family =>  "Helvetica,Swis721 BT"     , stroke_hex => "#0000ff" },
    { foreground => "red",    background => "white",  fg_hex => "#ff0000", bg_hex => "#ffffff", font_weight => "normal", font_family =>  "Helvetica,Swis721 BT"     , stroke_hex => "#0000ff" },
   );

foreach my $scheme (@schemes) {
    my $fg = $scheme->{foreground};
    my $bg = $scheme->{background};
    $fg =~ s{^#}{hex-};
    $bg =~ s{^#}{hex-};
    
    $scheme->{ALL_CAPS} = uc(sprintf("%s_ON_%s", $fg, $bg));
    $scheme->{ALL_CAPS} =~ s{[\s\-]+}{_};

    $scheme->{basename} = lc(sprintf("%s-on-%s", $fg, $bg));
    $scheme->{basename} =~ s{[\s\_]+}{-};
}

foreach my $scheme (@schemes) { print(<<"END"); }
$scheme->{ALL_CAPS}_SVG_ROUTE_ICONS = \$(shell (seq 0 99; echo 00; echo XX) | sed 's:\\(.*\\):target/route-icons/svg/$scheme->{basename}/\\1.svg:g')
END
print "\n";

foreach my $scheme (@schemes) { print(<<"END"); }
$scheme->{ALL_CAPS}_PNG_ROUTE_ICONS = \$(shell (seq 0 99; echo 00; echo XX) | sed 's:\\(.*\\):target/route-icons/png/$scheme->{basename}/\\1.png:g')
END
print "\n";

print "OTHER_PREREQUISITES = dirs Makefile\n";
print "\n";

print ".PHONY: default\n";
print "default: dirs";
foreach my $scheme (@schemes) {
    print(" \\\n\t\$($scheme->{ALL_CAPS}_SVG_ROUTE_ICONS)");
}
foreach my $scheme (@schemes) {
    print(" \\\n\t\$($scheme->{ALL_CAPS}_PNG_ROUTE_ICONS)");
}
print "\n\n";

print ".PHONY: svgs\n";
print "svgs: dirs";
foreach my $scheme (@schemes) {
    print(" \\\n\t\$($scheme->{ALL_CAPS}_SVG_ROUTE_ICONS)");
}
print "\n\n";

print ".PHONY: pngs\n";
print "pngs: dirs";
foreach my $scheme (@schemes) {
    print(" \\\n\t\$($scheme->{ALL_CAPS}_PNG_ROUTE_ICONS)");
}
print "\n\n";

print ".PHONY: dirs\n";
print "dirs:\n";
foreach my $scheme (@schemes) {
    print("\tmkdir -p target/route-icons/svg/$scheme->{basename} || true\n");
}
foreach my $scheme (@schemes) {
    print("\tmkdir -p target/route-icons/png/$scheme->{basename} || true\n");
}
print "\n";

print "-include ~/lib/make/common.mk\n\n";

foreach my $scheme (@schemes) { print(<<"END"); }
\$($scheme->{ALL_CAPS}_SVG_ROUTE_ICONS): target/route-icons/svg/$scheme->{basename}/%.svg: src/$scheme->{basename}.svg \$(OTHER_PREREQUISITES)
	sed 's:{ROUTE_NUMBER}:\$*:g' < \$< > \$\@.tmp
	mv \$\@.tmp \$\@

END

foreach my $scheme (@schemes) { print(<<"END"); }
target/route-icons/png/$scheme->{basename}/%.png: target/route-icons/svg/$scheme->{basename}/%.svg \$(OTHER_PREREQUISITES)
	\$(INKSCAPE) --without-gui --export-png "\$\@.tmp.png" \$<
	mv \$\@.tmp.png \$\@

END

foreach my $scheme (@schemes) {
    my $fh;
    my $filename = "src/$scheme->{basename}.svg";
    open($fh, ">", $filename) or die("Cannot write $filename: $!\n");

    my $stroke;
    if ($scheme->{stroke_hex}) {
	$stroke = "stroke:$scheme->{stroke_hex};stroke-opacity:1;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none";
    } else {
	$stroke = "stroke:none";
    }

    print $fh <<"END";
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" width="15" height="15" id="svg2" version="1.1" inkscape:version="0.48.4 r9939" sodipodi:docname="local-route-{ROUTE_NUMBER}.svg">
  <defs id="defs4" />
  <sodipodi:namedview id="base" pagecolor="#ffffff" bordercolor="#666666" borderopacity="1.0" inkscape:pageopacity="0.0" inkscape:pageshadow="2" inkscape:zoom="16" inkscape:cx="16.726721" inkscape:cy="15.299626" inkscape:document-units="px" inkscape:current-layer="layer1" showgrid="false" inkscape:window-width="1858" inkscape:window-height="1058" inkscape:window-x="54" inkscape:window-y="-8" inkscape:window-maximized="1">
    <inkscape:grid type="xygrid" id="grid2985" empspacing="5" visible="true" enabled="true" snapvisiblegridlinesonly="true" spacingx="0.5px" spacingy="0.5px" />
  </sodipodi:namedview>
  <metadata id="metadata7">
    <rdf:RDF>
      <cc:Work rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g inkscape:label="Layer 1" inkscape:groupmode="layer" id="layer1" transform="translate(0,-1037.3622)">
    <path sodipodi:type="arc" style="fill:$scheme->{bg_hex};fill-opacity:1;${stroke}" id="path2987" sodipodi:cx="7.5" sodipodi:cy="7.5" sodipodi:rx="7.5" sodipodi:ry="7.5" d="m 15,7.5 a 7.5,7.5 0 1 1 -15,0 7.5,7.5 0 1 1 15,0 z" transform="translate(0,1037.3622)" />
    <text xml:space="preserve" style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:125%;letter-spacing:0px;word-spacing:0px;text-anchor:middle;fill:$scheme->{bg_hex};fill-opacity:1;stroke:none;font-family:Helvetica,Swis721 Hv BT;-inkscape-font-specification:Helvetica,Swis721 Hv BT" x="7.4973145" y="1048.6031" id="text3757" sodipodi:linespacing="125%"><tspan sodipodi:role="line" id="tspan3759" x="7.4973145" y="1048.6031" style="font-size:11px;font-style:normal;font-variant:normal;font-weight:$scheme->{font_weight};font-stretch:normal;fill:$scheme->{fg_hex};fill-opacity:1;font-family:Helvetica,Swis721 BT;-inkscape-font-specification:$scheme->{font_family}">{ROUTE_NUMBER}</tspan></text>
    <text xml:space="preserve" style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:125%;letter-spacing:0px;word-spacing:0px;text-anchor:middle;fill:$scheme->{bg_hex};fill-opacity:1;stroke:none;font-family:Helvetica,Arial;-inkscape-font-specification:Arial" x="25.625" y="23.1875" id="text3767" sodipodi:linespacing="125%" transform="translate(0,1037.3622)"><tspan sodipodi:role="line" id="tspan3769" x="25.625" y="23.1875" /></text>
  </g>
</svg>
END
    close($fh);
}

# fill:#ffffff;fill-opacity:1;stroke:none
# fill:#ffffff;fill-opacity:1;stroke:#0000ff;stroke-opacity:1;stroke-width:1.2;stroke-miterlimit:4;stroke-dasharray:none
