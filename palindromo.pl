#!/bin/perl
#Autor:Damian Matuz

#Identificar si las cadenas son palindromos o no


if (!@ARGV)
{
	my $palabra;
	do
	{
		print "Escribe abajo una palabra para ver si es palíndromo o escribe 'salir'\n";
		$palabra = <STDIN>;
		chomp($palabra);
		#Convierto a minúsculas las palabras
		my $minus = lc($palabra);
		#Quito los espacios
		$minus =~ s/\s//g;
		#invierto la cadenas
		$alreves = reverse($minus);
		#Comparo si las cadenas son iguales al derecho y al reves
		if ($minus eq $alreves)
		{
			print "$palabra : es palíndromo\n";
		}
		elsif($palabra eq "salir")
		{
			Next;
		}
		else
		{
			print "$palabra : no es palíndromo\n";
		}
	}
	while($palabra ne "salir");
}
else
{
	
	for (@ARGV)
	{
		my $palabra = $_;
		#Convierto a minúsculas las palabras
		my $minus = lc($palabra);
		#Quito los espacios
		$minus =~ s/\s//g;
		#invierto la cadenas
		$alreves = reverse($minus);
		#Comparo si las cadenas son iguales al derecho y al reves
		if ($minus eq $alreves)
		{
			print "$palabra : es palíndromo\n";
		}
		else
		{
			print "$palabra : no es palíndromo\n";
		}
	}
}
