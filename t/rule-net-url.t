use Test::Base;
use FormValidator::LazyWay::Rule::Net;
use utf8;

plan tests => 1 * blocks;

run {
    my $block  = shift;
    my $result = FormValidator::LazyWay::Rule::Net::url( $block->value );
    is( $result, $block->result );
}

__END__

=== ok
--- value chomp
http://hogehoge.com/hogehoge/
--- result chomp
1
=== ok
--- value chomp
https://hogehoge.com/hogehoge/
--- result chomp
1
=== ng
--- value chomp
htt://hogehoge.com/hogehoge/
--- result chomp
0
