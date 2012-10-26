# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(split_params);
use Test::More 'tests' => 4;

# Test.
my ($ret1_ar, $ret2_ar) = split_params([], 'key', 'value');
is_deeply(
	$ret1_ar,
	['key', 'value'],
	'Object parameters 1.',
);
is_deeply(
	$ret2_ar,
	[],
	'Other parameters 1.',
);

# Test.
($ret1_ar, $ret2_ar) = split_params(['foo'],
	'key', 'value',
	'foo', 'bar',
);
is_deeply(
	$ret1_ar,
	['key', 'value'],
	'Object parameters 2.',
);
is_deeply(
	$ret2_ar,
	['foo', 'bar'],
	'Other parameters 2.',
);
