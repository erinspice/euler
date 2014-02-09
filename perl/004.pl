#!/usr/bin/perl

use strict;
use warnings;

# Problem 4
# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

my $answer = 0;
for (my $i = 100; $i < 1000; $i++) {
    for (my $j = 100; $j < 1000; $j++) {
        my $product = $i * $j;
        my @digits = split(//, $product);
        my $ispal = 1;
        my $ln = $#digits;

        for (my $k = 0; ($k <= int($ln/2) && $ispal == 1); $k++) {
            if ($digits[$k] != $digits[$ln - $k]) {
                $ispal = 0;
            }
        }
        if ($ispal && $product > $answer) {
            $answer = $product;
        }
    }
}
print "$answer\n";
