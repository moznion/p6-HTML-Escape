#! /usr/bin/env perl6

use v6.c;

use Test;
use HTML::Escape;

is unescape-html("&euro;5"), "€5", "Euro mark followed directly by number";
is unescape-html("It&apos;s an apostrophe!"), "It's an apostrophe!", "Apostrophe used mid-word";
