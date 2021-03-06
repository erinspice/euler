#!/usr/bin/perl

use strict;
use warnings;
use bignum;

# Problem 16
# Power digit sum
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

my $product = 2**1000;
my $sum = 0;

foreach my $each (split('', $product)) {
    $sum += $each;
}

print $sum, "\n";
