#print ENV variables in alphabetical order
foreach my $key (sort keys %ENV){
	print "$key=>$ENV{$key}\n";
}