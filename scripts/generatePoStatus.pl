#!/usr/bin/perl -w

use strict;

my %langPcts;
my $totalMessages;
my $lang;

while(<>) {
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

print <<HEADER;
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE document PUBLIC "-//APACHE//DTD Documentation V2.0//EN" "http://forrest.apache.org/dtd/document-v20.dtd">
<document>
  <header>
    <title>Translation Downloads</title>
  </header>
  <body>
    <section id="current">
      <title>Current Branch</title>
      <p>
        The numbers are percentages of translated messages.  The links are
	to the message catalogs merged up against the latest source code.
	If you wish to start a translation for a language not listed here,
	download the template message catalog.
      </p>
HEADER

print "<table><tr><th>&nbsp;</th>\n";
foreach $lang (sort(keys(%langPcts))) {
	print "<th>" . $lang . "</th>\n";
}
print "</tr><tr><td><a href=\"messages.pot\">Template</a><br />Messages: " . $totalMessages . "</td>\n";
foreach $lang (sort(keys(%langPcts))) {
	print "<td><a href=\"" . $lang . ".po\">" . $langPcts{$lang} . "</a></td>\n";
}
print "</tr></table>\n";

print <<FOOTER;
    </section>
  </body>
</document>
FOOTER

