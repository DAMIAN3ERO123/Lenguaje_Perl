#!/bin/perl
#Autor: Damian Matuz

use warnings;
use strict;

#Manejo de referencias en Escalares, Listas y Listas Asociativas

#Escalar
print "Escalar:\n";
my $palabra = "Hola mundo";
print $palabra."\n";
my $referencia_palabra = \$palabra;
$$referencia_palabra = "cambie";
print $palabra."\n";

#Listas
print "\nListas:\n";
my @lista = (1,2,3,4,5);
print @lista,"\n";
my $referencia_lista = \@lista;
$$referencia_lista[0] = 20; 
print @lista,"\n";
$referencia_lista->[4] = 99;
print @lista,"\n";

#Listas Asociativas o Hashes
print "\nListas asociativas\n";
my %lista_asociativa = ("Juan",18,"Pedro",25,"Maria",34);
print %lista_asociativa, "\n";
my $referencia_lista_asociativa = \%lista_asociativa;
$$referencia_lista_asociativa{"Juan"} = 20;
print %lista_asociativa, "\n";
$referencia_lista_asociativa->{"Pedro"} = 56;
print %lista_asociativa, "\n";


