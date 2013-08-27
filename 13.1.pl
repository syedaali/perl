#count files in a directory, similar to 'ls -a -1 | wc -l' without the . and ..
#asks for input from user
print qq{ enter directory to count files in ->  };
my $dir=<STDIN>;
chomp ($dir);
opendir DIR,$dir or die "Could not open dir $dir! $!";
my @files=readdir(DIR);
my $count=@files-2;
print qq{your directory $dir has $count files \n};
closedir (DIR);
