#!/bin/perl
#Autor: Damian Matuz

use warnings;
use strict;

my $numero = $ARGV[0];

for my $elemento (1..$numero)
{
	if($elemento % 2 == 0 && $elemento % 3 == 0 )
	{
		print $elemento." FizzBuzz\n";
	}
	elsif ($elemento % 2 == 0)
	{
		print $elemento." Fizz\n";
	}
	elsif ($elemento % 3 == 0)
	{
		print $elemento." Buzz\n";
	} 
	else
	{
		print $elemento." \n";
	}
}