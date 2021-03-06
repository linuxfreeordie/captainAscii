#!/usr/bin/perl
use strict; use warnings;
package CaptainAscii::Module::Dodge;
use parent 'CaptainAscii::Module';

sub _init {
	my $self = shift;

	$self->SUPER::_init();
	$self->{powerActive} = 3;
	$self->{powerPerPart} = 1;
	$self->{status} = 'dodge';
	return 1;
}

sub getKeys {
	return ('g');
}

sub name {
	return 'Dodge';
}

sub getDisplay {
    return '[⚔]'
}

1;
