#! /usr/bin/env perl6

use v6.c;

use Test;
use HTML::Escape;

# Unescape named HTML entities
subtest "Unescape named HTML entities" => {
    is unescape-html("&amp;"), "&", "Ampersand";
    is unescape-html("&apos;"), "'", "Single quotation mark (apostrophe)";
    is unescape-html("&cent;"), "¢", "Cent";
    is unescape-html("&copy;"), "©", "Copyright";
    is unescape-html("&euro;"), "€", "Euro";
    is unescape-html("&gt;"), ">", "Greater than";
    is unescape-html("&lt;"), "<", "Less than";
    is unescape-html("&pound;"), "£", "Pound";
    is unescape-html("&quot;"), "\"", "Double quotation mark";
    is unescape-html("&reg;"), "®", "Registered trademark";
    is unescape-html("&yen;"), "¥", "Yen";
}
