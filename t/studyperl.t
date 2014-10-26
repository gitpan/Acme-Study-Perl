#!perl -T

use strict;
use warnings;
use Test::More qw(no_plan);
use Acme::Study::Perl qw(studyperl);

SKIP: {
    diag("no tests in this file, only diagnostics");
    skip;
}

diag("\n");
studyperl(q{'123456789123456789.2' <=> '123456789123456790'}, "native big math float/int");
studyperl(q{'123456789123456789.2' <=> '123456789123456790.0'}, "native big math float/float");
studyperl(q{'123456789123456789' <=> '123456789123456790'}, "native big math int/int");
studyperl(q{'123456789123456789123456789123456789' <=> '123456789123456789123456789123456790'}, "native big math int/int larger");

