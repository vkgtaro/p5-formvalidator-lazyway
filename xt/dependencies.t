use Test::Dependencies
    exclude => [qw(FormValidator::LazyWay MyTestBase)],
    style   => 'light';
ok_dependencies();
