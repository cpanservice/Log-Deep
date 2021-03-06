
use strict;
use warnings;
use Test::More;

# check that Test::Spelling is installed
eval { require Test::Spelling; Test::Spelling->import() };

# now check that the spell command is installed
my $found;
for my $dir ( split /:/, $ENV{PATH} ) {
	next if !-d $dir;
	next if !-x "$dir/spell";

	$found = 1;
	last;
}

plan skip_all => "Test::Spelling required for testing POD spelling" if $@;
plan skip_all => "spell cmd required for testing POD spelling" if !$found;

add_stopwords(qw/CPAN AnnoCPAN RT NSW Hornsby Param Params Arg Plugins plugins pm url ie CGI analyse colour colouring Colours coloured ID's/);
all_pod_files_spelling_ok();
