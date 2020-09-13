#!/bin/perl
#Autor: Damian Matuz

use warnings;
use strict;

#Algunas funciones para manipular listas

my @lista = qw(manzana pera melón sandía);

print ("Función Push\n");
#Push(): Agrega un elemento al final del arreglo
push(@lista,'durazno');

#Recorrer la lista con el nuevo elemento
for (@lista)
{
	my $fruta = $_ . "\n";
	print $fruta;
}


print ("\nFunción Pop\n");
#Pop(): Extrae el último elemento del arreglo.
pop(@lista);
for (@lista)
{
	my $fruta = $_ . "\n";
	print $fruta;
}


print ("\nFunción Shift\n");
#Shift(): Extrae el primer elemento del arreglo.
shift(@lista);
for (@lista)
{
	my $fruta = $_ . "\n";
	print $fruta;
}

print ("\nFunción Unshift\n");
#Unshift(): Agreg un elemento al principio del arreglo
unshift(@lista,'mango');
for (@lista)
{
	my $fruta = $_ ."\n";
	print $fruta;
}



