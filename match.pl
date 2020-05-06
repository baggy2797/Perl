#!/usr/bin/perl

use warnings;
use strict;

my $fh;
my $i =0;
my $filename = 'input.txt';
my $v_ = 0;
my @chars;

#print "Hello World";
open $fh, $filename or die "could not open file, $!";

while (my $row = <$fh>)
{	$v_ = 0;
	chomp $row;
	@chars = split(//,$row);
	for($i=0;$i<@chars;$i++)
	{
		if($chars[$i]=~/a/ | $chars[$i]=~/A/) 
			{$v_++;}
		if($chars[$i]=~/e/ | $chars[$i]=~/E/) 
			{$v_++;}
		if($chars[$i]=~/i/ | $chars[$i]=~/I/) 
			{$v_++;}
		if($chars[$i]=~/o/ | $chars[$i]=~/O/) 
			{$v_++;}
		if($chars[$i]=~/u/ | $chars[$i]=~/U/) 
			{$v_++;}
	}
	#matching or
	if($row=~/or/)
		{print "$row contains or\n";}
	#no of vowels at least two
	if($v_>1)
		{print "$row contains at least two vowel letters\n";}
	#not starting with h
	if($row!~/^h/)
		{print "$row does not start with h\n";}
	#e as second symbol and ending with y
	if($chars[1]=~/e/ && $chars[@chars-1]=~/y/)
		{print "$row has e as the second symbol and ends with y\n";}
	#contains letters and digits
	if($row=~/[a-z]/ && $row=~/[0-9]/)
		{print "$row contains both letters and digits\n";}
}
