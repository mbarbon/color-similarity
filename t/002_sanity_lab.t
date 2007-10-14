#!/usr/bin/perl -w

use strict;
use Color::Similarity::Lab qw(distance);

use constant STEP => 14; # keep test count manageable
use Test::More no_plan => 1;

# maybe use random samples?
for( my $r = 0; $r < 256; $r += STEP ) {
    for( my $g = 0; $g < 256; $g += STEP ) {
        for( my $b = 0; $b < 256; $b += STEP ) {
            is( distance( [ $r, $g, $b ], [ $r, $g, $b ] ), 0 );
        }
    }
}
