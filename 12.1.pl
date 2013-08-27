#Go through all the files on the command line and list them in the output. Put a / after the names of directories, an * after executables, and an @ after symbolic links.

print qq{Enter file names separated by a comma-> };
my $filenames = <STDIN>;
chomp ($filenames);
my @files = split(/,/,$filenames);
foreach my $name (@files) {
	if (-d $name) { print "$name" . "/\n";};
	if (-x $name) { print "$name" . "*\n";};
	if (-l $name) { print "$name" . "@\n";};
}