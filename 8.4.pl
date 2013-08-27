#Write a regular expression that matches a string that begins and ends with the same thing, without overlap between the two parts of the string.
#for stuff like 'mom'
print "Enter string-> ";
my $string=<STDIN>;
chomp ($string);
if ($string =~ m/\A(.+).*\1\z/) {
	print qq{match found\n};
} else {
	print qq{match not found\n};
}
