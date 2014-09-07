#!/usr/bin/perl
use warnings;
use strict;

my $makefile = "Makefile.1";
open(STDOUT, ">", "$makefile") or die("Cannot write $makefile: $!\n");

my @schemes = ({ foreground => "white", background => "black" },
	       { foreground => "white", background => "blue" },
	       { foreground => "white", background => "red" },
	       { foreground => "black", background => "yellow" },
	       { foreground => "blue",  background => "white" });

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
$scheme->{ALL_CAPS}_SVG_ROUTE_ICONS = \$(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/svg/$scheme->{basename}/\\1.svg:g')
END
print "\n";

foreach my $scheme (@schemes) { print(<<"END"); }
$scheme->{ALL_CAPS}_PNG_ROUTE_ICONS = \$(shell (seq 0 99; echo 00; echo XX) | sed -r 's:(.*):target/route-icons/png/$scheme->{basename}/\\1.png:g')
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

