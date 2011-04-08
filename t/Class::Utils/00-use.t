# Modules.
use Test::More 'tests' => 2;

BEGIN {

	# Debug comment.
	print "Usage tests.\n";

	# Test.
	use_ok('Class::Utils');
}

# Test.
require_ok('Class::Utils');
