#! /usr/bin/env perl6

use v6.c;

use Test;
use HTML::Escape;

is unescape-html("&lt;^o^&gt;"), "<^o^>";
is unescape-html("&#39;"), "'";
is unescape-html("\0&gt;"), "\0>";
is unescape-html("&#96;"), "`";
is unescape-html("&#123;&#125;"), "{}";

is unescape-html("&euro;5"), "€5", "Euro mark followed directly by number";
is unescape-html("It&apos;s an apostrophe!"), "It's an apostrophe!", "Apostrophe used mid-word";
