#!/usr/bin/perl -w

use strict;

my %langPcts;
my $totalMessages;
my $lang;

if (@ARGV != 2) {
	die "Usage: generatePoStatus.pl <file> <version>\n";
}

my $version = $ARGV[1];

open INFILE, $ARGV[0] or die $!;

while(<INFILE>) {
	my $line = $_;
	if ($line =~ /(\w+).po\n/) {
		$lang = $1;
	} else {
		my $translated = 0;
		my $fuzzy = 0;
		my $untranslated = 0;
		if ($line =~ /(\d+) translated message/) {
			$translated = int($1);
		}
		if ($line =~ /(\d+) fuzzy translation/) {
			$fuzzy = int($1);
		}
		if ($line =~ /(\d+) untranslated message/) {
			$untranslated = int($1);
		}
		$totalMessages = $translated + $fuzzy + $untranslated;
		$langPcts{$lang} = int($translated / $totalMessages * 100);
	}
}

close(INFILE);

print "<section id=\"v" . $version . "\">\n";
print "<title>Branch - " . $version . "</title>\n";

print "<table><tr><th>&nbsp;</th>\n";
foreach $lang (sort(keys(%langPcts))) {
	print "<th>" . $lang . "</th>\n";
}
print "</tr><tr><td><a href=\"" . $version . "-messages.pot\">Template</a><br />Messages: " . $totalMessages . "</td>\n";
foreach $lang (sort(keys(%langPcts))) {
	print "<td><a href=\"" . $version . "-" . $lang . ".po\">" . $langPcts{$lang} . "</a></td>\n";
}
print "</tr></table></section>\n";
