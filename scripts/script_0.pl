#!/usr/bin/perl
use strict;

our $debug=1;
our $gl_ifconfig_cmd="/sbin/ifconfig";
our $gl_hostname_cmd="/sbin/ifconfig";

sub change_mac {
	my($iface, $new_mac) = @_;
	my $cmd = "$gl_ifconfig_cmd $iface hw ether $new_mac";
	print $cmd if $debug;
}

sub change_hostname {
	my ($new_hostname) = @_;
	my $cmd = "$gl_hostname_cmd $new_hostname";
}

sub setup_internet {
	#here openvpn setup
}

sub setup_nat_for_vm {
	#vmware internet
}

change_mac;
setup_hostname;
setup_internet;
setup_nat_for_vm;
disable_wifi;
disable_journal;
put_all_to_cache;
