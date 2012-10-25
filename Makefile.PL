#
# $Id: Makefile.PL 2 2012-10-25 13:25:37Z gomor $
#
use ExtUtils::MakeMaker;

my $libs = ['-L/lib -L/usr/lib -L/usr/local/lib -lfurll'];

my $inc = '-I/include -I/usr/include -I/usr/local/include';

WriteMakefile(
   NAME          => 'Lib::Furl',
   VERSION_FROM  => 'lib/Lib/Furl.pm',
   LICENSE       => 'artistic',
   ABSTRACT_FROM => 'lib/Lib/Furl.pm',
   AUTHOR        => 'GomoR <gomor-cpan_at_gomor.org>',
   LIBS          => $libs,
   INC           => $inc,
   DEFINE        => '',
);
