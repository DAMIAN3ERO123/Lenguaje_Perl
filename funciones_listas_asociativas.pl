#!/bin/perl
#Autor: Damian Matuz 
use warnings;
use strict;

#Funciones con hashes o listas asociativas

#my %lista_asociativa = ("a",1,"b",2,"c",3,"d",4);

my %lista_asociativa =(
	"a"=>1,
	"b"=>2,
	"c"=>3,
	"d"=>4
	);


#Keys(): Devuelve una lista con todas las llaves de un hash
print "Función Keys()\n";
my $llave;

for (keys(%lista_asociativa))
{
	$llave .= $_ ;
}
print $llave . "\n";

#Values(): Devuelve un arreglo con todos los valores de un hash
print "\nFunción Values()\n";
my $valor;

for (values(%lista_asociativa))
{
	$valor .= $_ ;
}
print $valor . "\n";

#Delete(): Elimina un elemento de la lista asociativa dandole la llave
print "\nFunción Delete\n";


delete $lista_asociativa{'c'};

print  %lista_asociativa;
print "\n";