package Class::Utils;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(set_params);

# Version.
our $VERSION = 0.05;

# Set parameters to user values.
sub set_params {
	my ($self, @params) = @_;
	while (@params) {
		my $key = shift @params;
		my $val = shift @params;
		if (! exists $self->{$key}) {
			err "Unknown parameter '$key'.";
		}
		$self->{$key} = $val;
	}
	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Class::Utils - Class utilities.

=head1 SYNOPSIS

 use Class::Utils qw(set_params);
 set_params($self, @params);

=head1 SUBROUTINES

=over 8

=item C<set_params($self, @params)>

 Sets object parameters to user values.
 If setted key doesn't exist in $self object, turn fatal error.
 $self - Object or hash reference.
 @params - Key, value pairs.

=back

=head1 ERRORS

 set_params():
         Unknown parameter '%s'.

=head1 EXAMPLE1

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Class::Utils qw(set_params);

 # Hash reference with default parameters.
 my $self = {
        'test' => 'default',
 };

 # Set params.
 set_params($self, 'test', 'real_value');

 # Print 'test' variable.
 print $self->{'test'}."\n";

 # Output:
 # real_value

=head1 EXAMPLE2

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Class::Utils qw(set_params);

 # Hash reference with default parameters.
 my $self = {};

 # Set bad params.
 set_params($self, 'bad', 'value');

 # Turn error >>Unknown parameter 'bad'.<<.

=head1 DEPENDENCIES

L<Error::Pure>,
L<Exporter>,
L<Readonly>.

=head1 REPOSITORY

L<https://github.com/tupinek/Class-Utils>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.05

=cut
