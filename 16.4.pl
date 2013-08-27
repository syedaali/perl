#print ENV variables in alphabetical order
#works on Unix only
foreach my $key (sort keys %ENV){
	print "$key=>$ENV{$key}\n";
}
