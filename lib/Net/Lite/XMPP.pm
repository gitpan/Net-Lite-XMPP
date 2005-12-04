package Net::Lite::XMPP;


use 5.006000;
use strict;
use warnings;

require Exporter;
use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Net::Lite::XMPP ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(

			) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

		);

our $VERSION = '0.02';
# Preloaded methods go here.
# Autoload methods go after =cut, and are processed by the autosplit program.
BEGIN {
};

sub new($$) {
	my $class=shift;
	my $self={};
	bless $self,$class;
	return $self;
};
sub open($$$) {
	my ($self,$host,$port)=@_;
	my ($data);
	my $sock;
	$sock = Net::SSLeay::Handle->make_socket($host, $port);
	$self->{'Sock'}=$sock;
	return 1;
};

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Net::Lite::XMPP - Perl XMPP client

=head1 SYNOPSIS

use Net::Lite::XMPP;
my $xmpp=Net::Lite::XMPP->new();

=head1 DESCRIPTION

Very simple XMPP client with support for TLS

=head1 SEE ALSO

L<Net::XMPP>

=head1 AUTHOR

Dariush Pietrzak,'Eyck' E<lt>cpan@ghost.anime.plE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Dariush Pietrzak

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.4 or,
at your option, any later version of Perl 5 you may have available.


=cut

