#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(split_params);

# Hash reference with default parameters.
my $self = {
       'foo' => undef,
};

# Example parameters.
my @params = qw(foo bar bad value);

# Set bad params.
my ($object_params_ar, $other_params_ar) = split_params(['foo'], @params);

# Print out.
print "Main params:\n";
print "* ".(join ': ', @{$object_params_ar});
print "\n";
print "Other params:\n";
print "* ".(join ': ', @{$other_params_ar});
print "\n";

# Output:
# Main params:
# * foo: bar
# Other params:
# * bad: value