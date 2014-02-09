#!/usr/bin/perl

use strict;
use warnings;

# Problem 2
# Even Fibonacci numbers
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# Find the sum of all the even-valued terms in the sequence which do not exceed
# four million.

my $last1 = 2;
my $last2 = 1;
my $total = 2;
my $cur = 0;

while ($cur <= 4000000) {
    $cur = $last1 + $last2;
    $total += $cur if $cur % 2 == 0;
    $last2 = $last1;
    $last1 = $cur;
}

print "$total\n";
