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
	#my $cmd = "$gl_hostname_cmd $new_hostname";
	my $cmd = "echo $new_hostname > /etc/hostname";
        print $cmd if $debug
}

sub setup_internet {
	#here openvpn setup
	#enable internet only for vmware
	#add special grop for vmware
	#iptables -A OUTPUT -m owner --gid-owner wino -j DROP
}

sub disable_logs {
#	my ($new_hostname) = @_;
	#my $cmd = "$gl_hostname_cmd $new_hostname";
	#update-rc.d -f rsyslog remove
	my $cmd_stop = "/etc/init.d/rsyslog stop";
	my $cmd_del = "rm -rf /var/log/*";
	my $cmd = "echo $new_hostname > /etc/hostname";
        print $cmd if $debug
}




change_mac;
setup_hostname;
setup_internet;
#disable_wifi;
disable_logs;
put_all_to_cache;
