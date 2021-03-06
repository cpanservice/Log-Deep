use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	meta_merge => {
		resources => {
			repository => 'http://github.com/ivanwills/Log-Deep',
		},
	},

	module_name         => 'Log::Deep',
	license             => 'perl',
	dist_author         => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from   => 'lib/Log/Deep.pm',
	requires            => {
		'Data::Dump::Streamer' => '2.08',
		'Readonly'             => '1.03',
		'Time::HiRes'          => '1.9711',
		'Clone'                => '0.29',
		'List::MoreUtils'      => 0,
		'Term::ANSIColor'      => 0,
	},
	build_requires      => {
		'Test::More'           => 0,
		'Test::Pod'            => 0,
		'Test::Pod::Coverage'  => 0,
		'Test::Spelling'       => 0,
		'Test::NoWarnings'     => 0,
	},
	add_to_cleanup      => [ 'Log-Deep-*' ],
	create_makefile_pl  => 'traditional',
	create_license      => 1,
);

$builder->create_build_script();

