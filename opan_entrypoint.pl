#!/usr/bin/perl
use strict;
use warnings;

if (!-d '/opan/pans') {
    system 'opan init';
}

unshift @ARGV, 'opan';

exec @ARGV;
