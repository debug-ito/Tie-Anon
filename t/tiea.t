use strict;
use warnings;
use Test::More;
use Tie::Anon qw(tiea);
use Tie::StdArray;

{
    my $aref = tiea("Tie::StdArray");
    is ref($aref), "ARRAY", "tiea should return an array-ref";
    is ref(tied($aref)), "Tie::StdArray", "... and it's backed by the tied class.";
}

fail("the case failing to tie");

done_testing;

