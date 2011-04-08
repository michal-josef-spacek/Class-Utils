# Modules.
use Class::Utils;
use Test::More 'tests' => 1;

# Debug message.
print "Testing: version.\n";

# Test.
is($Class::Utils::VERSION, '0.01');
