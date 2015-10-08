use v6;
unit class HTML::Escape;

sub escape-html(Str $raw) is export {
    return $raw.trans(
        [ '&',     '<',    '>',    q{"},     q{'},    q{`},    '{',      '}'     ] =>
        [ '&amp;', '&lt;', '&gt;', '&quot;', '&#39;', '&#96;', '&#123;', '&#125;']
    );
}

=begin pod

=head1 NAME

HTML::Escape - blah blah blah

=head1 SYNOPSIS

  use HTML::Escape;

=head1 DESCRIPTION

HTML::Escape is ...

=head1 COPYRIGHT AND LICENSE

Copyright 2015 moznion <moznion@gmail.com>

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
