#
# $Id$
#
package Lib::Furl;
use strict;
use warnings;

use base qw(Exporter DynaLoader);

our $VERSION = '0.10';

our %EXPORT_TAGS = (
   funcs => [qw(
      furl_init
      furl_get_version
      furl_decode
      furl_show
      furl_terminate
   )],
   consts => [qw(
      FURL_MAXLEN 
      FURL_LAST_SLASH_NOTFOUND
      FURL_LAST_SLASH_HIERARCHICAL
      FURL_LAST_SLASH_AFTER_DOMAIN
   )],
);
our @EXPORT = (
   @{$EXPORT_TAGS{funcs}},
   @{$EXPORT_TAGS{consts}},
);

__PACKAGE__->bootstrap($VERSION);

use constant FURL_MAXLEN => 8192;

use constant FURL_LAST_SLASH_NOTFOUND => 0;
use constant FURL_LAST_SLASH_HIERARCHICAL  => 1;
use constant FURL_LAST_SLASH_AFTER_DOMAIN   => 2;

1;

__END__

=head1 NAME

Lib::Furl - binding for stricaud furl library

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item B<furl_init> ()

=item B<furl_get_version> ()

=item B<furl_decode> ()

=item B<furl_show> ()

=item B<furl_terminate> ()

=back

=head1 CONSTANTS

=over 4

=back

=head1 COPYRIGHT AND LICENSE

You may distribute this module under the terms of the BSD license. See LICENSE file in the source distribution archive.

Copyright (c) 2012, Patrice <GomoR> Auffret

=cut
