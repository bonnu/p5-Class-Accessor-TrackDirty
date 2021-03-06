use strict;
use warnings;
use t::TestEntity;
use Test::More;

my $entity = t::TestEntity->new({key1 => 10, dummy => 20});
is $entity->key1, 10;
is $entity->key2, undef;

$entity->key1(undef);
$entity->key2(10);
is $entity->key1, undef;
is $entity->key2, 10;

done_testing;
