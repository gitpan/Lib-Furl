#!/usr/bin/perl
use strict;
use warnings;

use Lib::Furl qw(:funcs);

my $url    = 'https://github.com/stricaud/furl';
my $urlLen = length($url);

my $fh = furl_init();

my $ret = furl_decode($fh, $url, $urlLen);
print "furl_decode ret[$ret]\n";

print furl_show($fh, ',', *STDOUT),"\n";

furl_terminate($fh);
