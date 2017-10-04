#! /usr/bin/env perl6

use v6.c;

use Test;
use HTML::Escape;

plan 2;

subtest "Unescape named HTML entities" => {
    plan 11;

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

subtest "Unescape numbered HTML entities" => {
    plan 4;

    is unescape-html("&#39;"), "'", "Single quotation mark (apostrophe)";
    is unescape-html("&#96;"), "`", "Grave accent (backtick)";
    is unescape-html("&#123;"), "\{", "Opening brace";
    is unescape-html("&#125;"), "\}", "Closing brace";
}
