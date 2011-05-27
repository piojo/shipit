package ShipIt::Step::AutoVersion;
use strict;
use base 'ShipIt::Step';
use ShipIt::Util qw($term);

# return if okay, die if problems.
sub run {
    my ($self, $state) = @_;
    my $ver = $state->pt->current_version;

    # We don't overwrite tags
    $state->vc->exists_tagged_version($ver) and
	die "Sorry, version '$ver' is already tagged.  Stopping.\n";

    print "Going to tag version: $ver\n";
    $state->set_version($newver);
}

1;
