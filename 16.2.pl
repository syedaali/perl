# Use the backticks operator to read the output of ls –l command then report which users and groups it finds. 
print qq{Enter dir to find users and groups for -> };
my $dir=<STDIN>;
chomp $dir;
my (%users, %group);
foreach (`ls -l $dir`) {
	next if (m/^total/);
	my (undef, undef, $user, $group) = split ;
	$users{$user}++;
	$groups{$group}++;
}

foreach my $user (sort keys %users) {
	printf "%-8s %3d\n", $user, $users{$user};
}

foreach my $group (sort keys %groups) {
	printf "%-8s %3d\n", $group, $groups{$group};
}