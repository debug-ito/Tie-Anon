use strict;
use warnings;
use Test::More;
use Tie::Anon qw(tiea);
use Test::Requires {
    'Tie::File' => "0"
};
use Tie::File;

{
    note("--- synopsis example");
    my $result = "";
    for my $line (@{tiea('Tie::File', "xt/hoge.dat")}) {
        $result .= $line;
    }
    is $result, "hogefoobar", "read file OK";
}

done_testing;
